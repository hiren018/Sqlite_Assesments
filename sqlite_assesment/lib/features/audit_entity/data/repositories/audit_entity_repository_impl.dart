import 'package:sqlite_assesment/features/audit_entity/data/datasources/audit_entity_data.dart';
import 'package:sqlite_assesment/features/audit_entity/data/datasources/database/audit_entity_table.dart';
import 'package:sqlite_assesment/features/audit_entity/data/model/audit_entity_model.dart';
import 'package:sqlite_assesment/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class AuditEntityRepositoryImpl implements AuditEntityRepository {
  final AuditEntityData auditEntityData;

  AuditEntityRepositoryImpl({required this.auditEntityData});

  @override
  Future<Either<Failure, AuditEntityModel>> deleteAuditEntityData() async {
    final get = await auditEntityData.getAuditEntityData();
    return Right(get);
  }

  @override
  Future<Either<Failure, AuditEntityModel>> getAuditEntityData() async {
    final get = await auditEntityData.getAuditEntityData();
    return Right(get);
  }

  @override
  Future<void> insertjsondata() {
    // TODO: implement insertAuditEntity
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuditEntityModel>> updateAuditEntityData() async {
    final get = await auditEntityData.getAuditEntityData();
    return Right(get);
  }
}
