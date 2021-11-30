import 'package:dartz/dartz.dart';
import 'package:sqlite_assesment/core/error/failure.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/entities/audit_entity.dart';

abstract class AuditEntityRepository {
  Future<Either<Failure, AuditEntity>> getAuditEntityData();

  Future<Either<Failure, AuditEntity>> updateAuditEntityData();

  Future<Either<Failure, AuditEntity>> deleteAuditEntityData();

  Future<void> insertjsondata();
}
