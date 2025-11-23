import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/app_database.dart';
import '../repositories/delivery_repository.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

final deliveryRepositoryProvider = Provider<DeliveryRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return DeliveryRepository(db);
});
