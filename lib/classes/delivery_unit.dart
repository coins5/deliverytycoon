import 'package:deliverytycoon/classes/delivery_unit_state.dart';

class DeliveryUnit {
  final String name;
  final String description;
  final String iconPath;

  const DeliveryUnit({
    required this.name,
    required this.description,
    required this.iconPath,
  });

  DeliveryUnit copyWith({
    String? name,
    String? description,
    String? iconPath,
    DeliveryUnitState? state,
  }) {
    return DeliveryUnit(
      name: name ?? this.name,
      description: description ?? this.description,
      iconPath: iconPath ?? this.iconPath,
    );
  }
}
