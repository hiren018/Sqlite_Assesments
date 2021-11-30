import 'package:dartz/dartz.dart';
import 'package:sqlite_assesment/core/error/failure.dart';
import 'package:sqlite_assesment/features/audit_entity/data/model/audit_entity_model.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/entities/audit_entity.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class UpdateAuditEntityData {
  final AuditEntityRepository repository;

  UpdateAuditEntityData({required this.repository});

  Future<Either<Failure, AuditEntity>> call() async {
    return await repository.updateAuditEntityData();
  }
}
