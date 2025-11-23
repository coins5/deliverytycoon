class DeliveryUnitState {
  final double deliveryProgress;
  final double progressPerSecond; // velocidad
  final double dcoinsPerSuccessfulDelivery; // recompensa

  final int level;
  final double levelUpCost;

  const DeliveryUnitState({
    required this.deliveryProgress,
    required this.progressPerSecond,
    required this.dcoinsPerSuccessfulDelivery,
    required this.level,
    required this.levelUpCost,
  });

  DeliveryUnitState copyWith({
    double? deliveryProgress,
    double? progressPerSecond,
    double? dcoinsPerSuccessfulDelivery,
    int? level,
    double? levelUpCost,
    double? unlockCost,
  }) {
    return DeliveryUnitState(
      deliveryProgress: deliveryProgress ?? this.deliveryProgress,
      progressPerSecond: progressPerSecond ?? this.progressPerSecond,
      dcoinsPerSuccessfulDelivery:
          dcoinsPerSuccessfulDelivery ?? this.dcoinsPerSuccessfulDelivery,
      level: level ?? this.level,
      levelUpCost: levelUpCost ?? this.levelUpCost,
    );
  }

  String get progressToPercentage =>
      "${(deliveryProgress * 100).toStringAsFixed(1)}%";
  String get upgradeCostText =>
      "Mejorar (Costo: ${levelUpCost.toStringAsFixed(0)})";
  String get levelText => "Nivel: $level";
  String get progressPerSecondText =>
      "Velocidad: ${progressPerSecond.toStringAsFixed(2)} /s";
  String get dcoinsPerSuccessfulDeliveryText =>
      "Ganancia: +${dcoinsPerSuccessfulDelivery.toStringAsFixed(1)} DC por entrega";
}
