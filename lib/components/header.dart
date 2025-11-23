import 'package:deliverytycoon/components/boost_hud.dart';
import 'package:deliverytycoon/controllers/boost_controller.dart';
// import 'package:deliverytycoon/providers/boost_repository_provider.dart';
// import 'package:deliverytycoon/repositories/boost_repository.dart';
import 'package:flutter/material.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coins = ref.watch(dcoinsProvider);
    // final BoostRepository boost = ref.read(boostRepositoryProvider);
    // final multiplier = await ref.read(boostRepositoryProvider).getActiveBoostMultiplier();
    return Column(
      children: [
        Text(
          "Monedas: ${coins.toStringAsFixed(0)}",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const BoostHUD(),

        // Text("Boost: x${(boost.getActiveBoostMultiplier().toStringAsFixed(1)}"),
        // ElevatedButton(
        //   onPressed: () {
        //     ref
        //         .read(boostControllerProvider.notifier)
        //         .activateBoost(
        //           3.0, // x3 boost
        //           Duration(minutes: 10), // dura 10 minutos
        //         );
        //   },
        //   child: const Text("Activar Boost x3 (10 min)"),
        // ),
      ],
    );
  }
}
