class BoostState {
  final double multiplier; // 1.0, 2.0, 3.0...
  final DateTime? expiresAt; // null si no hay boost activo

  BoostState({required this.multiplier, required this.expiresAt});

  bool get isActive => multiplier > 1.0 && expiresAt != null;

  Duration get timeLeft =>
      expiresAt == null ? Duration.zero : expiresAt!.difference(DateTime.now());
}
