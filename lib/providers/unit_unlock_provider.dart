import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnitUnlockNotifier extends StateNotifier<bool> {
  UnitUnlockNotifier(this.ref, this.unlockCost) : super(false);

  final Ref ref;
  final double unlockCost; // costo inicial

  bool unlock(double playerCoins) {
    if (playerCoins < unlockCost) {
      return false;
    }

    // restamos monedas del provider global
    ref.read(dcoinsProvider.notifier).addCoins(-unlockCost);

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

      return UnitUnlockNotifier(ref, unlockCosts[unitId]);
    });
