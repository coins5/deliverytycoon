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
