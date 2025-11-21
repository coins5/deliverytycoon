import 'package:deliverytycoon/database/app_database.dart';
import 'package:drift/drift.dart';

class DeliveryRepository {
  final AppDatabase db;

  DeliveryRepository(this.db);

  Future<void> saveUnit(int id, DeliveryUnitsTableCompanion data) async {
    await db.into(db.deliveryUnitsTable).insertOnConflictUpdate(data);
  }

  Future<DeliveryUnitsTableData?> loadUnit(int id) async {
    return await (db.select(
      db.deliveryUnitsTable,
    )..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<void> saveGlobalCoins(double coins) async {
    await db
        .into(db.globalStatsTable)
        .insertOnConflictUpdate(
          GlobalStatsTableCompanion(id: const Value(0), dcoins: Value(coins)),
        );
  }

  Future<double> loadGlobalCoins() async {
    final result = await (db.select(
      db.globalStatsTable,
    )..where((tbl) => tbl.id.equals(0))).getSingleOrNull();

    return result?.dcoins ?? 0;
  }
}
