import 'package:deliverytycoon/providers/boost_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final boostProvider = FutureProvider<double>((ref) async {
  final repo = ref.read(boostRepositoryProvider);
  return await repo.getActiveBoostMultiplier();
});
