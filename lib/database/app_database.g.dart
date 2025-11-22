// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DeliveryUnitsTableTable extends DeliveryUnitsTable
    with TableInfo<$DeliveryUnitsTableTable, DeliveryUnitsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DeliveryUnitsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _deliveryProgressMeta = const VerificationMeta(
    'deliveryProgress',
  );
  @override
  late final GeneratedColumn<double> deliveryProgress = GeneratedColumn<double>(
    'delivery_progress',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _progressPerSecondMeta = const VerificationMeta(
    'progressPerSecond',
  );
  @override
  late final GeneratedColumn<double> progressPerSecond =
      GeneratedColumn<double>(
        'progress_per_second',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _dcoinsPerSuccessfulDeliveryMeta =
      const VerificationMeta('dcoinsPerSuccessfulDelivery');
  @override
  late final GeneratedColumn<double> dcoinsPerSuccessfulDelivery =
      GeneratedColumn<double>(
        'dcoins_per_successful_delivery',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
    'level',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _levelUpCostMeta = const VerificationMeta(
    'levelUpCost',
  );
  @override
  late final GeneratedColumn<double> levelUpCost = GeneratedColumn<double>(
    'level_up_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unlockedMeta = const VerificationMeta(
    'unlocked',
  );
  @override
  late final GeneratedColumn<bool> unlocked = GeneratedColumn<bool>(
    'unlocked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("unlocked" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    deliveryProgress,
    progressPerSecond,
    dcoinsPerSuccessfulDelivery,
    level,
    levelUpCost,
    unlocked,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'delivery_units_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<DeliveryUnitsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('delivery_progress')) {
      context.handle(
        _deliveryProgressMeta,
        deliveryProgress.isAcceptableOrUnknown(
          data['delivery_progress']!,
          _deliveryProgressMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_deliveryProgressMeta);
    }
    if (data.containsKey('progress_per_second')) {
      context.handle(
        _progressPerSecondMeta,
        progressPerSecond.isAcceptableOrUnknown(
          data['progress_per_second']!,
          _progressPerSecondMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_progressPerSecondMeta);
    }
    if (data.containsKey('dcoins_per_successful_delivery')) {
      context.handle(
        _dcoinsPerSuccessfulDeliveryMeta,
        dcoinsPerSuccessfulDelivery.isAcceptableOrUnknown(
          data['dcoins_per_successful_delivery']!,
          _dcoinsPerSuccessfulDeliveryMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dcoinsPerSuccessfulDeliveryMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta,
        level.isAcceptableOrUnknown(data['level']!, _levelMeta),
      );
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('level_up_cost')) {
      context.handle(
        _levelUpCostMeta,
        levelUpCost.isAcceptableOrUnknown(
          data['level_up_cost']!,
          _levelUpCostMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_levelUpCostMeta);
    }
    if (data.containsKey('unlocked')) {
      context.handle(
        _unlockedMeta,
        unlocked.isAcceptableOrUnknown(data['unlocked']!, _unlockedMeta),
      );
    } else if (isInserting) {
      context.missing(_unlockedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DeliveryUnitsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DeliveryUnitsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      deliveryProgress: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}delivery_progress'],
      )!,
      progressPerSecond: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}progress_per_second'],
      )!,
      dcoinsPerSuccessfulDelivery: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}dcoins_per_successful_delivery'],
      )!,
      level: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}level'],
      )!,
      levelUpCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}level_up_cost'],
      )!,
      unlocked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}unlocked'],
      )!,
    );
  }

  @override
  $DeliveryUnitsTableTable createAlias(String alias) {
    return $DeliveryUnitsTableTable(attachedDatabase, alias);
  }
}

class DeliveryUnitsTableData extends DataClass
    implements Insertable<DeliveryUnitsTableData> {
  final int id;
  final double deliveryProgress;
  final double progressPerSecond;
  final double dcoinsPerSuccessfulDelivery;
  final int level;
  final double levelUpCost;
  final bool unlocked;
  const DeliveryUnitsTableData({
    required this.id,
    required this.deliveryProgress,
    required this.progressPerSecond,
    required this.dcoinsPerSuccessfulDelivery,
    required this.level,
    required this.levelUpCost,
    required this.unlocked,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['delivery_progress'] = Variable<double>(deliveryProgress);
    map['progress_per_second'] = Variable<double>(progressPerSecond);
    map['dcoins_per_successful_delivery'] = Variable<double>(
      dcoinsPerSuccessfulDelivery,
    );
    map['level'] = Variable<int>(level);
    map['level_up_cost'] = Variable<double>(levelUpCost);
    map['unlocked'] = Variable<bool>(unlocked);
    return map;
  }

  DeliveryUnitsTableCompanion toCompanion(bool nullToAbsent) {
    return DeliveryUnitsTableCompanion(
      id: Value(id),
      deliveryProgress: Value(deliveryProgress),
      progressPerSecond: Value(progressPerSecond),
      dcoinsPerSuccessfulDelivery: Value(dcoinsPerSuccessfulDelivery),
      level: Value(level),
      levelUpCost: Value(levelUpCost),
      unlocked: Value(unlocked),
    );
  }

  factory DeliveryUnitsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeliveryUnitsTableData(
      id: serializer.fromJson<int>(json['id']),
      deliveryProgress: serializer.fromJson<double>(json['deliveryProgress']),
      progressPerSecond: serializer.fromJson<double>(json['progressPerSecond']),
      dcoinsPerSuccessfulDelivery: serializer.fromJson<double>(
        json['dcoinsPerSuccessfulDelivery'],
      ),
      level: serializer.fromJson<int>(json['level']),
      levelUpCost: serializer.fromJson<double>(json['levelUpCost']),
      unlocked: serializer.fromJson<bool>(json['unlocked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'deliveryProgress': serializer.toJson<double>(deliveryProgress),
      'progressPerSecond': serializer.toJson<double>(progressPerSecond),
      'dcoinsPerSuccessfulDelivery': serializer.toJson<double>(
        dcoinsPerSuccessfulDelivery,
      ),
      'level': serializer.toJson<int>(level),
      'levelUpCost': serializer.toJson<double>(levelUpCost),
      'unlocked': serializer.toJson<bool>(unlocked),
    };
  }

  DeliveryUnitsTableData copyWith({
    int? id,
    double? deliveryProgress,
    double? progressPerSecond,
    double? dcoinsPerSuccessfulDelivery,
    int? level,
    double? levelUpCost,
    bool? unlocked,
  }) => DeliveryUnitsTableData(
    id: id ?? this.id,
    deliveryProgress: deliveryProgress ?? this.deliveryProgress,
    progressPerSecond: progressPerSecond ?? this.progressPerSecond,
    dcoinsPerSuccessfulDelivery:
        dcoinsPerSuccessfulDelivery ?? this.dcoinsPerSuccessfulDelivery,
    level: level ?? this.level,
    levelUpCost: levelUpCost ?? this.levelUpCost,
    unlocked: unlocked ?? this.unlocked,
  );
  DeliveryUnitsTableData copyWithCompanion(DeliveryUnitsTableCompanion data) {
    return DeliveryUnitsTableData(
      id: data.id.present ? data.id.value : this.id,
      deliveryProgress: data.deliveryProgress.present
          ? data.deliveryProgress.value
          : this.deliveryProgress,
      progressPerSecond: data.progressPerSecond.present
          ? data.progressPerSecond.value
          : this.progressPerSecond,
      dcoinsPerSuccessfulDelivery: data.dcoinsPerSuccessfulDelivery.present
          ? data.dcoinsPerSuccessfulDelivery.value
          : this.dcoinsPerSuccessfulDelivery,
      level: data.level.present ? data.level.value : this.level,
      levelUpCost: data.levelUpCost.present
          ? data.levelUpCost.value
          : this.levelUpCost,
      unlocked: data.unlocked.present ? data.unlocked.value : this.unlocked,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DeliveryUnitsTableData(')
          ..write('id: $id, ')
          ..write('deliveryProgress: $deliveryProgress, ')
          ..write('progressPerSecond: $progressPerSecond, ')
          ..write('dcoinsPerSuccessfulDelivery: $dcoinsPerSuccessfulDelivery, ')
          ..write('level: $level, ')
          ..write('levelUpCost: $levelUpCost, ')
          ..write('unlocked: $unlocked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    deliveryProgress,
    progressPerSecond,
    dcoinsPerSuccessfulDelivery,
    level,
    levelUpCost,
    unlocked,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeliveryUnitsTableData &&
          other.id == this.id &&
          other.deliveryProgress == this.deliveryProgress &&
          other.progressPerSecond == this.progressPerSecond &&
          other.dcoinsPerSuccessfulDelivery ==
              this.dcoinsPerSuccessfulDelivery &&
          other.level == this.level &&
          other.levelUpCost == this.levelUpCost &&
          other.unlocked == this.unlocked);
}

class DeliveryUnitsTableCompanion
    extends UpdateCompanion<DeliveryUnitsTableData> {
  final Value<int> id;
  final Value<double> deliveryProgress;
  final Value<double> progressPerSecond;
  final Value<double> dcoinsPerSuccessfulDelivery;
  final Value<int> level;
  final Value<double> levelUpCost;
  final Value<bool> unlocked;
  const DeliveryUnitsTableCompanion({
    this.id = const Value.absent(),
    this.deliveryProgress = const Value.absent(),
    this.progressPerSecond = const Value.absent(),
    this.dcoinsPerSuccessfulDelivery = const Value.absent(),
    this.level = const Value.absent(),
    this.levelUpCost = const Value.absent(),
    this.unlocked = const Value.absent(),
  });
  DeliveryUnitsTableCompanion.insert({
    this.id = const Value.absent(),
    required double deliveryProgress,
    required double progressPerSecond,
    required double dcoinsPerSuccessfulDelivery,
    required int level,
    required double levelUpCost,
    required bool unlocked,
  }) : deliveryProgress = Value(deliveryProgress),
       progressPerSecond = Value(progressPerSecond),
       dcoinsPerSuccessfulDelivery = Value(dcoinsPerSuccessfulDelivery),
       level = Value(level),
       levelUpCost = Value(levelUpCost),
       unlocked = Value(unlocked);
  static Insertable<DeliveryUnitsTableData> custom({
    Expression<int>? id,
    Expression<double>? deliveryProgress,
    Expression<double>? progressPerSecond,
    Expression<double>? dcoinsPerSuccessfulDelivery,
    Expression<int>? level,
    Expression<double>? levelUpCost,
    Expression<bool>? unlocked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (deliveryProgress != null) 'delivery_progress': deliveryProgress,
      if (progressPerSecond != null) 'progress_per_second': progressPerSecond,
      if (dcoinsPerSuccessfulDelivery != null)
        'dcoins_per_successful_delivery': dcoinsPerSuccessfulDelivery,
      if (level != null) 'level': level,
      if (levelUpCost != null) 'level_up_cost': levelUpCost,
      if (unlocked != null) 'unlocked': unlocked,
    });
  }

  DeliveryUnitsTableCompanion copyWith({
    Value<int>? id,
    Value<double>? deliveryProgress,
    Value<double>? progressPerSecond,
    Value<double>? dcoinsPerSuccessfulDelivery,
    Value<int>? level,
    Value<double>? levelUpCost,
    Value<bool>? unlocked,
  }) {
    return DeliveryUnitsTableCompanion(
      id: id ?? this.id,
      deliveryProgress: deliveryProgress ?? this.deliveryProgress,
      progressPerSecond: progressPerSecond ?? this.progressPerSecond,
      dcoinsPerSuccessfulDelivery:
          dcoinsPerSuccessfulDelivery ?? this.dcoinsPerSuccessfulDelivery,
      level: level ?? this.level,
      levelUpCost: levelUpCost ?? this.levelUpCost,
      unlocked: unlocked ?? this.unlocked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (deliveryProgress.present) {
      map['delivery_progress'] = Variable<double>(deliveryProgress.value);
    }
    if (progressPerSecond.present) {
      map['progress_per_second'] = Variable<double>(progressPerSecond.value);
    }
    if (dcoinsPerSuccessfulDelivery.present) {
      map['dcoins_per_successful_delivery'] = Variable<double>(
        dcoinsPerSuccessfulDelivery.value,
      );
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (levelUpCost.present) {
      map['level_up_cost'] = Variable<double>(levelUpCost.value);
    }
    if (unlocked.present) {
      map['unlocked'] = Variable<bool>(unlocked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeliveryUnitsTableCompanion(')
          ..write('id: $id, ')
          ..write('deliveryProgress: $deliveryProgress, ')
          ..write('progressPerSecond: $progressPerSecond, ')
          ..write('dcoinsPerSuccessfulDelivery: $dcoinsPerSuccessfulDelivery, ')
          ..write('level: $level, ')
          ..write('levelUpCost: $levelUpCost, ')
          ..write('unlocked: $unlocked')
          ..write(')'))
        .toString();
  }
}

class $GlobalStatsTableTable extends GlobalStatsTable
    with TableInfo<$GlobalStatsTableTable, GlobalStatsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GlobalStatsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dcoinsMeta = const VerificationMeta('dcoins');
  @override
  late final GeneratedColumn<double> dcoins = GeneratedColumn<double>(
    'dcoins',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastActiveMeta = const VerificationMeta(
    'lastActive',
  );
  @override
  late final GeneratedColumn<String> lastActive = GeneratedColumn<String>(
    'last_active',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, dcoins, lastActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'global_stats_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<GlobalStatsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('dcoins')) {
      context.handle(
        _dcoinsMeta,
        dcoins.isAcceptableOrUnknown(data['dcoins']!, _dcoinsMeta),
      );
    } else if (isInserting) {
      context.missing(_dcoinsMeta);
    }
    if (data.containsKey('last_active')) {
      context.handle(
        _lastActiveMeta,
        lastActive.isAcceptableOrUnknown(data['last_active']!, _lastActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_lastActiveMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GlobalStatsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GlobalStatsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      dcoins: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}dcoins'],
      )!,
      lastActive: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_active'],
      )!,
    );
  }

  @override
  $GlobalStatsTableTable createAlias(String alias) {
    return $GlobalStatsTableTable(attachedDatabase, alias);
  }
}

class GlobalStatsTableData extends DataClass
    implements Insertable<GlobalStatsTableData> {
  final int id;
  final double dcoins;
  final String lastActive;
  const GlobalStatsTableData({
    required this.id,
    required this.dcoins,
    required this.lastActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['dcoins'] = Variable<double>(dcoins);
    map['last_active'] = Variable<String>(lastActive);
    return map;
  }

  GlobalStatsTableCompanion toCompanion(bool nullToAbsent) {
    return GlobalStatsTableCompanion(
      id: Value(id),
      dcoins: Value(dcoins),
      lastActive: Value(lastActive),
    );
  }

  factory GlobalStatsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GlobalStatsTableData(
      id: serializer.fromJson<int>(json['id']),
      dcoins: serializer.fromJson<double>(json['dcoins']),
      lastActive: serializer.fromJson<String>(json['lastActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dcoins': serializer.toJson<double>(dcoins),
      'lastActive': serializer.toJson<String>(lastActive),
    };
  }

  GlobalStatsTableData copyWith({
    int? id,
    double? dcoins,
    String? lastActive,
  }) => GlobalStatsTableData(
    id: id ?? this.id,
    dcoins: dcoins ?? this.dcoins,
    lastActive: lastActive ?? this.lastActive,
  );
  GlobalStatsTableData copyWithCompanion(GlobalStatsTableCompanion data) {
    return GlobalStatsTableData(
      id: data.id.present ? data.id.value : this.id,
      dcoins: data.dcoins.present ? data.dcoins.value : this.dcoins,
      lastActive: data.lastActive.present
          ? data.lastActive.value
          : this.lastActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GlobalStatsTableData(')
          ..write('id: $id, ')
          ..write('dcoins: $dcoins, ')
          ..write('lastActive: $lastActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, dcoins, lastActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GlobalStatsTableData &&
          other.id == this.id &&
          other.dcoins == this.dcoins &&
          other.lastActive == this.lastActive);
}

class GlobalStatsTableCompanion extends UpdateCompanion<GlobalStatsTableData> {
  final Value<int> id;
  final Value<double> dcoins;
  final Value<String> lastActive;
  const GlobalStatsTableCompanion({
    this.id = const Value.absent(),
    this.dcoins = const Value.absent(),
    this.lastActive = const Value.absent(),
  });
  GlobalStatsTableCompanion.insert({
    this.id = const Value.absent(),
    required double dcoins,
    required String lastActive,
  }) : dcoins = Value(dcoins),
       lastActive = Value(lastActive);
  static Insertable<GlobalStatsTableData> custom({
    Expression<int>? id,
    Expression<double>? dcoins,
    Expression<String>? lastActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dcoins != null) 'dcoins': dcoins,
      if (lastActive != null) 'last_active': lastActive,
    });
  }

  GlobalStatsTableCompanion copyWith({
    Value<int>? id,
    Value<double>? dcoins,
    Value<String>? lastActive,
  }) {
    return GlobalStatsTableCompanion(
      id: id ?? this.id,
      dcoins: dcoins ?? this.dcoins,
      lastActive: lastActive ?? this.lastActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dcoins.present) {
      map['dcoins'] = Variable<double>(dcoins.value);
    }
    if (lastActive.present) {
      map['last_active'] = Variable<String>(lastActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GlobalStatsTableCompanion(')
          ..write('id: $id, ')
          ..write('dcoins: $dcoins, ')
          ..write('lastActive: $lastActive')
          ..write(')'))
        .toString();
  }
}

class $ActiveBoostsTableTable extends ActiveBoostsTable
    with TableInfo<$ActiveBoostsTableTable, ActiveBoostsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActiveBoostsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _multiplierMeta = const VerificationMeta(
    'multiplier',
  );
  @override
  late final GeneratedColumn<double> multiplier = GeneratedColumn<double>(
    'multiplier',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiresAtMeta = const VerificationMeta(
    'expiresAt',
  );
  @override
  late final GeneratedColumn<String> expiresAt = GeneratedColumn<String>(
    'expires_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, multiplier, expiresAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'active_boosts_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ActiveBoostsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('multiplier')) {
      context.handle(
        _multiplierMeta,
        multiplier.isAcceptableOrUnknown(data['multiplier']!, _multiplierMeta),
      );
    } else if (isInserting) {
      context.missing(_multiplierMeta);
    }
    if (data.containsKey('expires_at')) {
      context.handle(
        _expiresAtMeta,
        expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta),
      );
    } else if (isInserting) {
      context.missing(_expiresAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActiveBoostsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActiveBoostsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      multiplier: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}multiplier'],
      )!,
      expiresAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expires_at'],
      )!,
    );
  }

  @override
  $ActiveBoostsTableTable createAlias(String alias) {
    return $ActiveBoostsTableTable(attachedDatabase, alias);
  }
}

class ActiveBoostsTableData extends DataClass
    implements Insertable<ActiveBoostsTableData> {
  final int id;
  final double multiplier;
  final String expiresAt;
  const ActiveBoostsTableData({
    required this.id,
    required this.multiplier,
    required this.expiresAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['multiplier'] = Variable<double>(multiplier);
    map['expires_at'] = Variable<String>(expiresAt);
    return map;
  }

  ActiveBoostsTableCompanion toCompanion(bool nullToAbsent) {
    return ActiveBoostsTableCompanion(
      id: Value(id),
      multiplier: Value(multiplier),
      expiresAt: Value(expiresAt),
    );
  }

  factory ActiveBoostsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActiveBoostsTableData(
      id: serializer.fromJson<int>(json['id']),
      multiplier: serializer.fromJson<double>(json['multiplier']),
      expiresAt: serializer.fromJson<String>(json['expiresAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'multiplier': serializer.toJson<double>(multiplier),
      'expiresAt': serializer.toJson<String>(expiresAt),
    };
  }

  ActiveBoostsTableData copyWith({
    int? id,
    double? multiplier,
    String? expiresAt,
  }) => ActiveBoostsTableData(
    id: id ?? this.id,
    multiplier: multiplier ?? this.multiplier,
    expiresAt: expiresAt ?? this.expiresAt,
  );
  ActiveBoostsTableData copyWithCompanion(ActiveBoostsTableCompanion data) {
    return ActiveBoostsTableData(
      id: data.id.present ? data.id.value : this.id,
      multiplier: data.multiplier.present
          ? data.multiplier.value
          : this.multiplier,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActiveBoostsTableData(')
          ..write('id: $id, ')
          ..write('multiplier: $multiplier, ')
          ..write('expiresAt: $expiresAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, multiplier, expiresAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActiveBoostsTableData &&
          other.id == this.id &&
          other.multiplier == this.multiplier &&
          other.expiresAt == this.expiresAt);
}

class ActiveBoostsTableCompanion
    extends UpdateCompanion<ActiveBoostsTableData> {
  final Value<int> id;
  final Value<double> multiplier;
  final Value<String> expiresAt;
  const ActiveBoostsTableCompanion({
    this.id = const Value.absent(),
    this.multiplier = const Value.absent(),
    this.expiresAt = const Value.absent(),
  });
  ActiveBoostsTableCompanion.insert({
    this.id = const Value.absent(),
    required double multiplier,
    required String expiresAt,
  }) : multiplier = Value(multiplier),
       expiresAt = Value(expiresAt);
  static Insertable<ActiveBoostsTableData> custom({
    Expression<int>? id,
    Expression<double>? multiplier,
    Expression<String>? expiresAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (multiplier != null) 'multiplier': multiplier,
      if (expiresAt != null) 'expires_at': expiresAt,
    });
  }

  ActiveBoostsTableCompanion copyWith({
    Value<int>? id,
    Value<double>? multiplier,
    Value<String>? expiresAt,
  }) {
    return ActiveBoostsTableCompanion(
      id: id ?? this.id,
      multiplier: multiplier ?? this.multiplier,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (multiplier.present) {
      map['multiplier'] = Variable<double>(multiplier.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<String>(expiresAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActiveBoostsTableCompanion(')
          ..write('id: $id, ')
          ..write('multiplier: $multiplier, ')
          ..write('expiresAt: $expiresAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DeliveryUnitsTableTable deliveryUnitsTable =
      $DeliveryUnitsTableTable(this);
  late final $GlobalStatsTableTable globalStatsTable = $GlobalStatsTableTable(
    this,
  );
  late final $ActiveBoostsTableTable activeBoostsTable =
      $ActiveBoostsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    deliveryUnitsTable,
    globalStatsTable,
    activeBoostsTable,
  ];
}

typedef $$DeliveryUnitsTableTableCreateCompanionBuilder =
    DeliveryUnitsTableCompanion Function({
      Value<int> id,
      required double deliveryProgress,
      required double progressPerSecond,
      required double dcoinsPerSuccessfulDelivery,
      required int level,
      required double levelUpCost,
      required bool unlocked,
    });
typedef $$DeliveryUnitsTableTableUpdateCompanionBuilder =
    DeliveryUnitsTableCompanion Function({
      Value<int> id,
      Value<double> deliveryProgress,
      Value<double> progressPerSecond,
      Value<double> dcoinsPerSuccessfulDelivery,
      Value<int> level,
      Value<double> levelUpCost,
      Value<bool> unlocked,
    });

class $$DeliveryUnitsTableTableFilterComposer
    extends Composer<_$AppDatabase, $DeliveryUnitsTableTable> {
  $$DeliveryUnitsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get deliveryProgress => $composableBuilder(
    column: $table.deliveryProgress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get progressPerSecond => $composableBuilder(
    column: $table.progressPerSecond,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dcoinsPerSuccessfulDelivery => $composableBuilder(
    column: $table.dcoinsPerSuccessfulDelivery,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get levelUpCost => $composableBuilder(
    column: $table.levelUpCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get unlocked => $composableBuilder(
    column: $table.unlocked,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DeliveryUnitsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DeliveryUnitsTableTable> {
  $$DeliveryUnitsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get deliveryProgress => $composableBuilder(
    column: $table.deliveryProgress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get progressPerSecond => $composableBuilder(
    column: $table.progressPerSecond,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dcoinsPerSuccessfulDelivery => $composableBuilder(
    column: $table.dcoinsPerSuccessfulDelivery,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get level => $composableBuilder(
    column: $table.level,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get levelUpCost => $composableBuilder(
    column: $table.levelUpCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get unlocked => $composableBuilder(
    column: $table.unlocked,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DeliveryUnitsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DeliveryUnitsTableTable> {
  $$DeliveryUnitsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get deliveryProgress => $composableBuilder(
    column: $table.deliveryProgress,
    builder: (column) => column,
  );

  GeneratedColumn<double> get progressPerSecond => $composableBuilder(
    column: $table.progressPerSecond,
    builder: (column) => column,
  );

  GeneratedColumn<double> get dcoinsPerSuccessfulDelivery => $composableBuilder(
    column: $table.dcoinsPerSuccessfulDelivery,
    builder: (column) => column,
  );

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<double> get levelUpCost => $composableBuilder(
    column: $table.levelUpCost,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get unlocked =>
      $composableBuilder(column: $table.unlocked, builder: (column) => column);
}

class $$DeliveryUnitsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DeliveryUnitsTableTable,
          DeliveryUnitsTableData,
          $$DeliveryUnitsTableTableFilterComposer,
          $$DeliveryUnitsTableTableOrderingComposer,
          $$DeliveryUnitsTableTableAnnotationComposer,
          $$DeliveryUnitsTableTableCreateCompanionBuilder,
          $$DeliveryUnitsTableTableUpdateCompanionBuilder,
          (
            DeliveryUnitsTableData,
            BaseReferences<
              _$AppDatabase,
              $DeliveryUnitsTableTable,
              DeliveryUnitsTableData
            >,
          ),
          DeliveryUnitsTableData,
          PrefetchHooks Function()
        > {
  $$DeliveryUnitsTableTableTableManager(
    _$AppDatabase db,
    $DeliveryUnitsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DeliveryUnitsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DeliveryUnitsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DeliveryUnitsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<double> deliveryProgress = const Value.absent(),
                Value<double> progressPerSecond = const Value.absent(),
                Value<double> dcoinsPerSuccessfulDelivery =
                    const Value.absent(),
                Value<int> level = const Value.absent(),
                Value<double> levelUpCost = const Value.absent(),
                Value<bool> unlocked = const Value.absent(),
              }) => DeliveryUnitsTableCompanion(
                id: id,
                deliveryProgress: deliveryProgress,
                progressPerSecond: progressPerSecond,
                dcoinsPerSuccessfulDelivery: dcoinsPerSuccessfulDelivery,
                level: level,
                levelUpCost: levelUpCost,
                unlocked: unlocked,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required double deliveryProgress,
                required double progressPerSecond,
                required double dcoinsPerSuccessfulDelivery,
                required int level,
                required double levelUpCost,
                required bool unlocked,
              }) => DeliveryUnitsTableCompanion.insert(
                id: id,
                deliveryProgress: deliveryProgress,
                progressPerSecond: progressPerSecond,
                dcoinsPerSuccessfulDelivery: dcoinsPerSuccessfulDelivery,
                level: level,
                levelUpCost: levelUpCost,
                unlocked: unlocked,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DeliveryUnitsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DeliveryUnitsTableTable,
      DeliveryUnitsTableData,
      $$DeliveryUnitsTableTableFilterComposer,
      $$DeliveryUnitsTableTableOrderingComposer,
      $$DeliveryUnitsTableTableAnnotationComposer,
      $$DeliveryUnitsTableTableCreateCompanionBuilder,
      $$DeliveryUnitsTableTableUpdateCompanionBuilder,
      (
        DeliveryUnitsTableData,
        BaseReferences<
          _$AppDatabase,
          $DeliveryUnitsTableTable,
          DeliveryUnitsTableData
        >,
      ),
      DeliveryUnitsTableData,
      PrefetchHooks Function()
    >;
typedef $$GlobalStatsTableTableCreateCompanionBuilder =
    GlobalStatsTableCompanion Function({
      Value<int> id,
      required double dcoins,
      required String lastActive,
    });
typedef $$GlobalStatsTableTableUpdateCompanionBuilder =
    GlobalStatsTableCompanion Function({
      Value<int> id,
      Value<double> dcoins,
      Value<String> lastActive,
    });

class $$GlobalStatsTableTableFilterComposer
    extends Composer<_$AppDatabase, $GlobalStatsTableTable> {
  $$GlobalStatsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dcoins => $composableBuilder(
    column: $table.dcoins,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastActive => $composableBuilder(
    column: $table.lastActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GlobalStatsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $GlobalStatsTableTable> {
  $$GlobalStatsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dcoins => $composableBuilder(
    column: $table.dcoins,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastActive => $composableBuilder(
    column: $table.lastActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GlobalStatsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $GlobalStatsTableTable> {
  $$GlobalStatsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get dcoins =>
      $composableBuilder(column: $table.dcoins, builder: (column) => column);

  GeneratedColumn<String> get lastActive => $composableBuilder(
    column: $table.lastActive,
    builder: (column) => column,
  );
}

class $$GlobalStatsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GlobalStatsTableTable,
          GlobalStatsTableData,
          $$GlobalStatsTableTableFilterComposer,
          $$GlobalStatsTableTableOrderingComposer,
          $$GlobalStatsTableTableAnnotationComposer,
          $$GlobalStatsTableTableCreateCompanionBuilder,
          $$GlobalStatsTableTableUpdateCompanionBuilder,
          (
            GlobalStatsTableData,
            BaseReferences<
              _$AppDatabase,
              $GlobalStatsTableTable,
              GlobalStatsTableData
            >,
          ),
          GlobalStatsTableData,
          PrefetchHooks Function()
        > {
  $$GlobalStatsTableTableTableManager(
    _$AppDatabase db,
    $GlobalStatsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GlobalStatsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GlobalStatsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GlobalStatsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<double> dcoins = const Value.absent(),
                Value<String> lastActive = const Value.absent(),
              }) => GlobalStatsTableCompanion(
                id: id,
                dcoins: dcoins,
                lastActive: lastActive,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required double dcoins,
                required String lastActive,
              }) => GlobalStatsTableCompanion.insert(
                id: id,
                dcoins: dcoins,
                lastActive: lastActive,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GlobalStatsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GlobalStatsTableTable,
      GlobalStatsTableData,
      $$GlobalStatsTableTableFilterComposer,
      $$GlobalStatsTableTableOrderingComposer,
      $$GlobalStatsTableTableAnnotationComposer,
      $$GlobalStatsTableTableCreateCompanionBuilder,
      $$GlobalStatsTableTableUpdateCompanionBuilder,
      (
        GlobalStatsTableData,
        BaseReferences<
          _$AppDatabase,
          $GlobalStatsTableTable,
          GlobalStatsTableData
        >,
      ),
      GlobalStatsTableData,
      PrefetchHooks Function()
    >;
typedef $$ActiveBoostsTableTableCreateCompanionBuilder =
    ActiveBoostsTableCompanion Function({
      Value<int> id,
      required double multiplier,
      required String expiresAt,
    });
typedef $$ActiveBoostsTableTableUpdateCompanionBuilder =
    ActiveBoostsTableCompanion Function({
      Value<int> id,
      Value<double> multiplier,
      Value<String> expiresAt,
    });

class $$ActiveBoostsTableTableFilterComposer
    extends Composer<_$AppDatabase, $ActiveBoostsTableTable> {
  $$ActiveBoostsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get multiplier => $composableBuilder(
    column: $table.multiplier,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ActiveBoostsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ActiveBoostsTableTable> {
  $$ActiveBoostsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get multiplier => $composableBuilder(
    column: $table.multiplier,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ActiveBoostsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActiveBoostsTableTable> {
  $$ActiveBoostsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get multiplier => $composableBuilder(
    column: $table.multiplier,
    builder: (column) => column,
  );

  GeneratedColumn<String> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);
}

class $$ActiveBoostsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ActiveBoostsTableTable,
          ActiveBoostsTableData,
          $$ActiveBoostsTableTableFilterComposer,
          $$ActiveBoostsTableTableOrderingComposer,
          $$ActiveBoostsTableTableAnnotationComposer,
          $$ActiveBoostsTableTableCreateCompanionBuilder,
          $$ActiveBoostsTableTableUpdateCompanionBuilder,
          (
            ActiveBoostsTableData,
            BaseReferences<
              _$AppDatabase,
              $ActiveBoostsTableTable,
              ActiveBoostsTableData
            >,
          ),
          ActiveBoostsTableData,
          PrefetchHooks Function()
        > {
  $$ActiveBoostsTableTableTableManager(
    _$AppDatabase db,
    $ActiveBoostsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActiveBoostsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActiveBoostsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActiveBoostsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<double> multiplier = const Value.absent(),
                Value<String> expiresAt = const Value.absent(),
              }) => ActiveBoostsTableCompanion(
                id: id,
                multiplier: multiplier,
                expiresAt: expiresAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required double multiplier,
                required String expiresAt,
              }) => ActiveBoostsTableCompanion.insert(
                id: id,
                multiplier: multiplier,
                expiresAt: expiresAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ActiveBoostsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ActiveBoostsTableTable,
      ActiveBoostsTableData,
      $$ActiveBoostsTableTableFilterComposer,
      $$ActiveBoostsTableTableOrderingComposer,
      $$ActiveBoostsTableTableAnnotationComposer,
      $$ActiveBoostsTableTableCreateCompanionBuilder,
      $$ActiveBoostsTableTableUpdateCompanionBuilder,
      (
        ActiveBoostsTableData,
        BaseReferences<
          _$AppDatabase,
          $ActiveBoostsTableTable,
          ActiveBoostsTableData
        >,
      ),
      ActiveBoostsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DeliveryUnitsTableTableTableManager get deliveryUnitsTable =>
      $$DeliveryUnitsTableTableTableManager(_db, _db.deliveryUnitsTable);
  $$GlobalStatsTableTableTableManager get globalStatsTable =>
      $$GlobalStatsTableTableTableManager(_db, _db.globalStatsTable);
  $$ActiveBoostsTableTableTableManager get activeBoostsTable =>
      $$ActiveBoostsTableTableTableManager(_db, _db.activeBoostsTable);
}
