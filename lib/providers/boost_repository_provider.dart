import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/boost_repository.dart';
import 'database_provider.dart'; // aquí está databaseProvider

final boostRepositoryProvider = Provider<BoostRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return BoostRepository(db);
});
