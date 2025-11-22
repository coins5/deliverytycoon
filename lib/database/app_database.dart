import 'package:deliverytycoon/database/tables.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [DeliveryUnitsTable, GlobalStatsTable, ActiveBoostsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) => m.createAll(),
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(globalStatsTable, globalStatsTable.lastActive);

        final fallback = DateTime.now().toIso8601String();
        await m.database.customStatement(
          'UPDATE ${globalStatsTable.actualTableName} '
          'SET last_active = ? '
          "WHERE last_active IS NULL OR last_active = ''",
          [fallback],
        );
      }

      if (from < 3) {
        await m.createTable(activeBoostsTable);
      }
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // drift_flutter accepts DriftNativeOptions in `native`; passing `true` is invalid
    final db = driftDatabase(name: "delivery_tycoon.db");
    return db;
  });
}
