import 'package:get_it/get_it.dart';
import 'package:sqlite_assesment/features/audit_entity/data/repositories/audit_entity_repository_impl.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/usecases/delete_audit_entity_data.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/usecases/get_audit_entity_data.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/usecases/insert_json_data.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/usecases/update_audit_entity_data.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<DeleteAuditEntityData>(
      () => DeleteAuditEntityData(repository: sl.call()));

  sl.registerLazySingleton<GetAuditEntityData>(
      () => GetAuditEntityData(repository: sl.call()));

  sl.registerLazySingleton<UpdateAuditEntityData>(
      () => UpdateAuditEntityData(repository: sl.call()));

  sl.registerLazySingleton<InsertJsonData>(
      () => InsertJsonData(repository: sl.call()));

  sl.registerLazySingleton<AuditEntityRepository>(
      () => AuditEntityRepositoryImpl(repository: sl.call()));
}
