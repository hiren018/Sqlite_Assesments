// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_entity_table.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Audit extends DataClass implements Insertable<Audit> {
  final int id;
  final String entity_name;
  final String? entity_end_date;
  Audit({required this.id, required this.entity_name, this.entity_end_date});
  factory Audit.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Audit(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      entity_name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_name'])!,
      entity_end_date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entity_end_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['entity_name'] = Variable<String>(entity_name);
    if (!nullToAbsent || entity_end_date != null) {
      map['entity_end_date'] = Variable<String?>(entity_end_date);
    }
    return map;
  }

  AuditsCompanion toCompanion(bool nullToAbsent) {
    return AuditsCompanion(
      id: Value(id),
      entity_name: Value(entity_name),
      entity_end_date: entity_end_date == null && nullToAbsent
          ? const Value.absent()
          : Value(entity_end_date),
    );
  }

  factory Audit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Audit(
      id: serializer.fromJson<int>(json['id']),
      entity_name: serializer.fromJson<String>(json['entity_name']),
      entity_end_date: serializer.fromJson<String?>(json['entity_end_date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'entity_name': serializer.toJson<String>(entity_name),
      'entity_end_date': serializer.toJson<String?>(entity_end_date),
    };
  }

  Audit copyWith({int? id, String? entity_name, String? entity_end_date}) =>
      Audit(
        id: id ?? this.id,
        entity_name: entity_name ?? this.entity_name,
        entity_end_date: entity_end_date ?? this.entity_end_date,
      );
  @override
  String toString() {
    return (StringBuffer('Audit(')
          ..write('id: $id, ')
          ..write('entity_name: $entity_name, ')
          ..write('entity_end_date: $entity_end_date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, entity_name, entity_end_date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Audit &&
          other.id == this.id &&
          other.entity_name == this.entity_name &&
          other.entity_end_date == this.entity_end_date);
}

class AuditsCompanion extends UpdateCompanion<Audit> {
  final Value<int> id;
  final Value<String> entity_name;
  final Value<String?> entity_end_date;
  const AuditsCompanion({
    this.id = const Value.absent(),
    this.entity_name = const Value.absent(),
    this.entity_end_date = const Value.absent(),
  });
  AuditsCompanion.insert({
    this.id = const Value.absent(),
    required String entity_name,
    this.entity_end_date = const Value.absent(),
  }) : entity_name = Value(entity_name);
  static Insertable<Audit> custom({
    Expression<int>? id,
    Expression<String>? entity_name,
    Expression<String?>? entity_end_date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entity_name != null) 'entity_name': entity_name,
      if (entity_end_date != null) 'entity_end_date': entity_end_date,
    });
  }

  AuditsCompanion copyWith(
      {Value<int>? id,
      Value<String>? entity_name,
      Value<String?>? entity_end_date}) {
    return AuditsCompanion(
      id: id ?? this.id,
      entity_name: entity_name ?? this.entity_name,
      entity_end_date: entity_end_date ?? this.entity_end_date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (entity_name.present) {
      map['entity_name'] = Variable<String>(entity_name.value);
    }
    if (entity_end_date.present) {
      map['entity_end_date'] = Variable<String?>(entity_end_date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditsCompanion(')
          ..write('id: $id, ')
          ..write('entity_name: $entity_name, ')
          ..write('entity_end_date: $entity_end_date')
          ..write(')'))
        .toString();
  }
}

class $AuditsTable extends Audits with TableInfo<$AuditsTable, Audit> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _entity_nameMeta =
      const VerificationMeta('entity_name');
  late final GeneratedColumn<String?> entity_name = GeneratedColumn<String?>(
      'entity_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _entity_end_dateMeta =
      const VerificationMeta('entity_end_date');
  late final GeneratedColumn<String?> entity_end_date =
      GeneratedColumn<String?>('entity_end_date', aliasedName, true,
          typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, entity_name, entity_end_date];
  @override
  String get aliasedName => _alias ?? 'audits';
  @override
  String get actualTableName => 'audits';
  @override
  VerificationContext validateIntegrity(Insertable<Audit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('entity_name')) {
      context.handle(
          _entity_nameMeta,
          entity_name.isAcceptableOrUnknown(
              data['entity_name']!, _entity_nameMeta));
    } else if (isInserting) {
      context.missing(_entity_nameMeta);
    }
    if (data.containsKey('entity_end_date')) {
      context.handle(
          _entity_end_dateMeta,
          entity_end_date.isAcceptableOrUnknown(
              data['entity_end_date']!, _entity_end_dateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Audit map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Audit.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditsTable createAlias(String alias) {
    return $AuditsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AuditsTable audits = $AuditsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [audits];
}
