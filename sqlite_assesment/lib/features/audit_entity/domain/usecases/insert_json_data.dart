import 'package:dartz/dartz.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class InsertJsonData {
  final AuditEntityRepository repository;

  InsertJsonData({required this.repository});

  Future<void> call() async {
    return await repository.insertjsondata();
  }
}
