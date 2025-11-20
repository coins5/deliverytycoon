class DeliveryUnitState {
  final double deliveryProgress; // 0–1
  final double dcoinsPerSuccessfulDelivery;
  final double progressPerSecond; // 👈 NUEVO

  final int levelUpCost;
  final int currentTier;

  const DeliveryUnitState({
    required this.deliveryProgress,
    required this.dcoinsPerSuccessfulDelivery,
    required this.progressPerSecond,
    required this.levelUpCost,
    required this.currentTier,
  });

  String get progressToPercentage =>
      "Progreso de entrega: ${(deliveryProgress * 100).toStringAsFixed(1)}%";

  DeliveryUnitState copyWith({
    double? deliveryProgress,
    double? dcoinsPerSuccessfulDelivery,
    double? progressPerSecond,
    int? levelUpCost,
    int? currentTier,
  }) {
    return DeliveryUnitState(
      deliveryProgress: deliveryProgress ?? this.deliveryProgress,
      dcoinsPerSuccessfulDelivery:
          dcoinsPerSuccessfulDelivery ?? this.dcoinsPerSuccessfulDelivery,
      progressPerSecond: progressPerSecond ?? this.progressPerSecond,
      levelUpCost: levelUpCost ?? this.levelUpCost,
      currentTier: currentTier ?? this.currentTier,
    );
  }
}
