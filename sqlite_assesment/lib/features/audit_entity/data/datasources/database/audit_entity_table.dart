import 'package:moor_flutter/moor_flutter.dart';
part 'audit_entity_table.g.dart';

class Audits extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get entity_name => text().withLength(min: 1, max: 50)();
  TextColumn get entity_end_date => text().nullable()();
}

@UseMoor(tables: [Audits])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true)));

  @override
  int get schemaVersion => 1;
  Future getAllEntries() => select(audits).get();
  Stream<List<Audit>> watchAllEntries() => select(audits).watch();
  Future insertNewEntry(Audit audit) => into(audits).insert(audit);
  Future deleteEntity(Audit audit) => delete(audits).delete(audit);
  Future updateEntity(Audit audit) => update(audits).replace(audit);
}
