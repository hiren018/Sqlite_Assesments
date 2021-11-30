import 'package:sqlite_assesment/features/audit_entity/domain/entities/audit_entity.dart';

class AuditEntityModel extends AuditEntity {
  AuditEntityModel({
    required this.auditEntityId,
    required this.auditEntityName,
    this.entityEndDate,
  }) : super(
            auditEntityId: auditEntityId,
            auditEntityName: auditEntityName,
            entityEndDate: entityEndDate);

  @override
  int auditEntityId;
  @override
  String auditEntityName;
  @override
  String? entityEndDate;

  factory AuditEntityModel.fromJson(Map<String, dynamic> json) =>
      AuditEntityModel(
          auditEntityId: json["id"] ?? "",
          auditEntityName: json["name"] ?? "unknown",
          entityEndDate: json["date"] ?? "unknown");

  Map<String, dynamic> toJson() =>
      {"id": auditEntityId, "name": auditEntityName, "date": entityEndDate};
}
