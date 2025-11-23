import 'package:deliverytycoon/database/app_database.dart';
import 'package:deliverytycoon/providers/database_provider.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart';

class UnitUnlockNotifier extends StateNotifier<bool> {
  UnitUnlockNotifier(this.ref, this.unitId, this.unlockCost) : super(false) {
    _loadUnlockState();
  }

  final Ref ref;
  final int unitId;
  final double unlockCost; // costo inicial

  Future<void> _loadUnlockState() async {
    final repo = ref.read(deliveryRepositoryProvider);
    final savedUnit = await repo.loadUnit(unitId);

    if (savedUnit?.unlocked == true) {
      state = true;
    }
  }

  Future<bool> unlock(double playerCoins) async {
    if (state) return true;

    if (playerCoins < unlockCost) {
      return false; // sin monedas suficientes
    }

    // restamos monedas del provider global
    ref.read(dcoinsProvider.notifier).addCoins(-unlockCost);

    final repo = ref.read(deliveryRepositoryProvider);
    final savedUnit = await repo.loadUnit(unitId);

    // Guardamos en Drift para persistir el desbloqueo
    await repo.saveUnit(
      unitId,
      DeliveryUnitsTableCompanion(
        id: Value(unitId),
        deliveryProgress: Value(savedUnit?.deliveryProgress ?? 0),
        progressPerSecond: Value(savedUnit?.progressPerSecond ?? 0.2),
        dcoinsPerSuccessfulDelivery:
            Value(savedUnit?.dcoinsPerSuccessfulDelivery ?? 1),
        level: Value(savedUnit?.level ?? 1),
        levelUpCost: Value(savedUnit?.levelUpCost ?? 10),
        unlocked: const Value(true),
      ),
    );

    state = true;
    return true;
  }
}

final unitUnlockProvider =
    StateNotifierProvider.family<UnitUnlockNotifier, bool, int>((ref, unitId) {
      // Puedes definir costos diferentes por unidad
      const List<double> unlockCosts = [
        0, // unidad 0 es gratis
        50, // unidad 1 requiere 50 monedas
        200, // unidad 2 requiere 200
        1000, // etc...
      ];

      return UnitUnlockNotifier(ref, unitId, unlockCosts[unitId]);
    });
