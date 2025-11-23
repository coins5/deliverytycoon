import 'package:deliverytycoon/providers/boost_repository_provider.dart';
import 'package:deliverytycoon/providers/database_provider.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:deliverytycoon/providers/navigator_key_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartupProvider = FutureProvider<void>((ref) async {
  final repo = ref.read(deliveryRepositoryProvider);
  final boostRepo = ref.read(boostRepositoryProvider);

  // 1 — cargar timestamps y offlineSeconds
  final lastActive = await repo.loadLastActive();
  final now = DateTime.now();
  final secondsOffline = now.difference(lastActive).inSeconds;
  if (secondsOffline <= 0) return;

  // 2 — obtener multiplicador por boost
  final boostMultiplier = await boostRepo.getActiveBoostMultiplier();

  double totalCoins = 0;

  const unitCount = 3;
  for (int id = 0; id < unitCount; id++) {
    final unit = await repo.loadUnit(id);
    if (unit == null || !unit.unlocked) continue;

    // Fórmulas tomando upgrades
    final pps = unit.progressPerSecond;
    final reward = unit.dcoinsPerSuccessfulDelivery;

    final totalProgress = pps * secondsOffline;
    final deliveries = totalProgress.floor();

    final baseCoins = deliveries * reward;

    // -------- NUEVO: upgrades & boosts --------
    final levelBonus = 1 + (unit.level * 0.05); // +5% por nivel por ejemplo

    final coins = baseCoins * levelBonus * boostMultiplier;

    totalCoins += coins;
  }

  if (totalCoins > 0) {
    ref.read(dcoinsProvider.notifier).addCoins(totalCoins);

    Future.microtask(() {
      showDialog(
        context: ref.read(navigatorKeyProvider).currentContext!,
        builder: (dialogContext) => AlertDialog(
          title: Text("Ganaste ${totalCoins.toStringAsFixed(2)} 🪙"),
          content: Text(
            "Mientras estabas fuera, tus unidades trabajaron.\n"
            "Boost aplicado: x$boostMultiplier",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text("Nice!"),
            ),
          ],
        ),
      );
    });
  }

  await repo.saveLastActive(now);
});
