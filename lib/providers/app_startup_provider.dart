import 'package:deliverytycoon/providers/database_provider.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:deliverytycoon/providers/navigator_key_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartupProvider = FutureProvider<void>((ref) async {
  final repo = ref.read(deliveryRepositoryProvider);

  // paso 1: cargar últimos datos
  final lastActive = await repo.loadLastActive();

  final now = DateTime.now();
  final secondsOffline = now.difference(lastActive).inSeconds;

  if (secondsOffline <= 0) return;

  print("Estuviste offline por $secondsOffline segundos");

  // paso 2: calcular producción offline
  double totalCoinsEarned = 0;

  const unitCount = 3; // cambia esto según tu juego

  for (int id = 0; id < unitCount; id++) {
    final unit = await repo.loadUnit(id);
    if (unit == null || !unit.unlocked) continue;

    // Fórmula de producción offline por unidad
    final progressPerSecond = unit.progressPerSecond;
    final dcoinsPerDelivery = unit.dcoinsPerSuccessfulDelivery;

    // progreso total acumulado offline
    final totalProgress = secondsOffline * progressPerSecond;

    // entregas completas
    final deliveries = totalProgress.floor();

    // monedas ganadas
    totalCoinsEarned += deliveries * dcoinsPerDelivery;
  }

  // paso 3: sumar a dcoins globales
  if (totalCoinsEarned > 0) {
    ref.read(dcoinsProvider.notifier).addCoins(totalCoinsEarned);

    // paso 4: mostrar modal después de cargar UI
    Future.microtask(() {
      showDialog(
        context: ref.read(navigatorKeyProvider).currentContext!,
        builder: (dialogContext) {
          return AlertDialog(
            title: const Text("¡Bienvenido de vuelta!"),
            content: Text(
              "Ganaste ${totalCoinsEarned.toStringAsFixed(2)} 🪙 mientras estabas fuera.",
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: const Text("Genial!"),
              ),
            ],
          );
        },
      );
    });
  }

  // paso 5: actualizamos timestamp
  await repo.saveLastActive(now);
});
