import 'dart:async';
import 'package:deliverytycoon/classes/delivery_unit_state.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeliveryUnitNotifier extends StateNotifier<DeliveryUnitState> {
  final Ref ref;
  Timer? _timer;

  DeliveryUnitNotifier(this.ref)
    : super(
        const DeliveryUnitState(
          deliveryProgress: 0,
          dcoinsPerSuccessfulDelivery: 1,
          progressPerSecond: 0.2,
          levelUpCost: 10,
          level: 1,
        ),
      ) {
    _startAutoProgress();
  }

  void _startAutoProgress() {
    const tickRate = Duration(milliseconds: 100);

    _timer = Timer.periodic(tickRate, (timer) {
      final increment = state.progressPerSecond * 0.1;
      _addProgress(increment);
    });
  }

  void _addProgress(double amount) {
    double newProgress = state.deliveryProgress + amount;

    if (newProgress >= 1.0) {
      newProgress -= 1.0;

      // ⭐ Agregar monedas globales
      ref
          .read(dcoinsProvider.notifier)
          .addCoins(state.dcoinsPerSuccessfulDelivery);
    }

    state = state.copyWith(deliveryProgress: newProgress);
  }

  void levelUp() {
    final cost = state.levelUpCost;
    final coins = ref.read(dcoinsProvider);

    if (coins < cost) {
      print("No tienes suficientes monedas");
      return;
    }

    // 1. Restar monedas
    ref.read(dcoinsProvider.notifier).addCoins(-cost);

    // 2. Aplicar mejoras
    final newLevel = state.level + 1;

    state = state.copyWith(
      level: newLevel,
      progressPerSecond: state.progressPerSecond * 1.10, // +10% velocidad
      dcoinsPerSuccessfulDelivery:
          state.dcoinsPerSuccessfulDelivery * 1.15, // +15% dCoins
      levelUpCost: cost * 1.15, // costo aumenta 15%
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

// FAMILY: permite múltiples estados separados
// final deliveryUnitProvider =
//     StateNotifierProvider.family<DeliveryUnitNotifier, DeliveryUnitState, int>((
//       ref,
//       unitId,
//     ) {
//       return DeliveryUnitNotifier();
//     });

final deliveryUnitProvider =
    StateNotifierProvider.family<DeliveryUnitNotifier, DeliveryUnitState, int>((
      ref,
      unitId,
    ) {
      return DeliveryUnitNotifier(ref);
    });
