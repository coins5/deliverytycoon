import 'package:deliverytycoon/database/app_database.dart';
import 'package:drift/drift.dart';

class BoostRepository {
  final AppDatabase db;

  BoostRepository(this.db);

  Future<void> activateBoost(double multiplier, Duration duration) async {
    final expires = DateTime.now().add(duration);

    await db
        .into(db.activeBoostsTable)
        .insertOnConflictUpdate(
          ActiveBoostsTableCompanion(
            id: const Value(0),
            multiplier: Value(multiplier),
            expiresAt: Value(expires.toIso8601String()),
          ),
        );
  }

  Future<double> getActiveBoostMultiplier() async {
    final data = await (db.select(
      db.activeBoostsTable,
    )..where((tbl) => tbl.id.equals(0))).getSingleOrNull();

    if (data == null) return 1.0;

    final expires = DateTime.parse(data.expiresAt);

    if (DateTime.now().isAfter(expires)) {
      // boost ya expiró, lo borramos
      await db.delete(db.activeBoostsTable).go();
      return 1.0;
    }

    return data.multiplier;
  }
}
