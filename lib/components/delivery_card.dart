import 'package:deliverytycoon/classes/delivery_unit.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:deliverytycoon/providers/delivery_unit_provider.dart';
import 'package:deliverytycoon/providers/unit_unlock_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeliveryUnitCard extends ConsumerWidget {
  const DeliveryUnitCard({
    super.key,
    required this.deliveryUnit,
    required this.unitId,
  });

  final DeliveryUnit deliveryUnit;
  final int unitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 👇 State específico de esta unidad
    final state = ref.watch(deliveryUnitProvider(unitId));
    final isUnlocked = ref.watch(unitUnlockProvider(unitId));

    if (!isUnlocked) {
      final unlockNotifier = ref.read(unitUnlockProvider(unitId).notifier);
      final unlockCost = unlockNotifier.unlockCost;

      return Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                deliveryUnit.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                "Unidad bloqueada",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () async {
                  final playerCoins = ref.read(
                    dcoinsProvider,
                  ); // Obtener monedas del jugador
                  final success = await unlockNotifier.unlock(playerCoins);
                  if (!success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "No tienes suficientes DC para desbloquear esta unidad.",
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  "Desbloquear (Costo: ${unlockCost.toStringAsFixed(0)})",
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                deliveryUnit.iconPath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 16),

            // Detalles
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deliveryUnit.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    deliveryUnit.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 12),

                  // Progreso de esta unidad
                  LinearProgressIndicator(value: state.deliveryProgress),

                  const SizedBox(height: 8),

                  Text(state.progressToPercentage),

                  const SizedBox(height: 12),
                  Text(state.levelText),
                  Text(state.progressPerSecondText),
                  Text(state.dcoinsPerSuccessfulDeliveryText),
                  ElevatedButton(
                    onPressed: () {
                      ref.read(deliveryUnitProvider(unitId).notifier).levelUp();
                    },
                    child: Text(state.upgradeCostText),
                  ),

                  // Botón para probar el cambio:
                  // ElevatedButton(
                  //   onPressed: () {
                  //     ref
                  //         .read(deliveryUnitProvider(unitId).notifier)
                  //         .incrementProgress(0.1);
                  //   },
                  //   child: const Text("Progresar 10%"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
