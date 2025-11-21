import 'package:deliverytycoon/database/tables.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [DeliveryUnitsTable, GlobalStatsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // drift_flutter accepts DriftNativeOptions in `native`; passing `true` is invalid
    final db = driftDatabase(name: "delivery_tycoon.db");
    return db;
  });
}
