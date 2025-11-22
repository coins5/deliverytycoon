import 'package:drift/drift.dart';

class DeliveryUnitsTable extends Table {
  IntColumn get id => integer()(); // id 0, 1, 2...

  RealColumn get deliveryProgress => real()();
  RealColumn get progressPerSecond => real()();
  RealColumn get dcoinsPerSuccessfulDelivery => real()();

  IntColumn get level => integer()();
  RealColumn get levelUpCost => real()();

  BoolColumn get unlocked => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

class GlobalStatsTable extends Table {
  IntColumn get id => integer()(); // always 0
  RealColumn get dcoins => real()();

  TextColumn get lastActive => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class ActiveBoostsTable extends Table {
  IntColumn get id => integer()(); // solo 0 si hay 1 boost activo

  RealColumn get multiplier => real()(); // ejemplo: 2.0 = x2
  TextColumn get expiresAt => text()(); // DateTime ISO

  @override
  Set<Column> get primaryKey => {id};
}
