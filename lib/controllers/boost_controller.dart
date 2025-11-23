import 'dart:async';
import 'package:deliverytycoon/classes/boost_state.dart';
import 'package:deliverytycoon/providers/boost_repository_provider.dart';
import 'package:deliverytycoon/providers/database_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoostController extends StateNotifier<BoostState> {
  final Ref ref;
  Timer? _timer;

  // BoostController(this.ref) : super(1.0) {
  //   _loadFromDb();
  // }
  BoostController(this.ref)
    : super(BoostState(multiplier: 1.0, expiresAt: null)) {
    _loadFromDb();
    _startTicker();
  }

  Future<void> _loadFromDb() async {
    final repo = ref.read(boostRepositoryProvider);
    final multiplier = await repo.getActiveBoostMultiplier();

    // obtener expiresAt manualmente desde DB:
    final db = ref.read(databaseProvider);
    final raw = await (db.select(
      db.activeBoostsTable,
    )..where((t) => t.id.equals(0))).getSingleOrNull();

    if (raw == null || multiplier == 1.0) {
      state = BoostState(multiplier: 1.0, expiresAt: null);
      return;
    }

    state = BoostState(
      multiplier: multiplier,
      expiresAt: DateTime.parse(raw.expiresAt),
    );
  }

  void _startTicker() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!state.isActive) return;

      if (state.timeLeft.isNegative) {
        // boost expirado
        state = BoostState(multiplier: 1.0, expiresAt: null);
      } else {
        // redibujar para actualizar el HUD
        state = BoostState(
          multiplier: state.multiplier,
          expiresAt: state.expiresAt,
        );
      }
    });
  }

  Future<void> activateBoost(double multiplier, Duration duration) async {
    final repo = ref.read(boostRepositoryProvider);
    final expires = DateTime.now().add(duration);

    await repo.activateBoost(multiplier, duration);

    state = BoostState(multiplier: multiplier, expiresAt: expires);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

/// Provider global del boost actual
final boostControllerProvider =
    StateNotifierProvider<BoostController, BoostState>((ref) {
      return BoostController(ref);
    });
