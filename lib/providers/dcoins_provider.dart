import 'package:flutter_riverpod/flutter_riverpod.dart';

class DCoinsNotifier extends StateNotifier<double> {
  DCoinsNotifier() : super(0);

  void addCoins(double amount) {
    state += amount;
  }
}

final dcoinsProvider = StateNotifierProvider<DCoinsNotifier, double>((ref) {
  return DCoinsNotifier();
});
