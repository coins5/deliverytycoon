import 'package:flutter/material.dart';
import 'package:deliverytycoon/providers/dcoins_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coins = ref.watch(dcoinsProvider);
    return Text(
      "Monedas: ${coins.toStringAsFixed(0)}",
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
