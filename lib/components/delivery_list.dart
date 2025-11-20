import 'package:flutter/material.dart';
import 'package:deliverytycoon/classes/delivery_unit.dart';
import 'package:deliverytycoon/components/delivery_card.dart';

class DeliveryList extends StatelessWidget {
  const DeliveryList({super.key, required this.items});

  final List<DeliveryUnit> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: DeliveryUnitCard(deliveryUnit: item, unitId: index),
        );
      },
    );
  }
}
