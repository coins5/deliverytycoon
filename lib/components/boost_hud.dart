import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/boost_controller.dart';

class BoostHUD extends ConsumerWidget {
  const BoostHUD({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final boost = ref.watch(boostControllerProvider);

    if (!boost.isActive) return const SizedBox.shrink();

    final minutes = boost.timeLeft.inMinutes.toString().padLeft(2, '0');
    final seconds = (boost.timeLeft.inSeconds % 60).toString().padLeft(2, '0');

    return Positioned(
      top: 20,
      right: 20,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: boost.isActive ? 1 : 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange.shade600, Colors.red.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(2, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: Row(
            children: [
              Text(
                "x${boost.multiplier.toStringAsFixed(0)}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 12),
              const Icon(Icons.timer, color: Colors.white),
              const SizedBox(width: 4),
              Text(
                "$minutes:$seconds",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
