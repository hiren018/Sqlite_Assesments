class AuditEntity {
  AuditEntity({
    required this.auditEntityId,
    this.auditId,
    required this.auditEntityName,
    this.auditEntityTypeId,
    this.auditParentEntityId,
    this.sequenceNo,
    this.entityEndDate,
    this.isLeafNode,
    this.barcodeNfc,
    this.entityLevel,
    this.entityException,
    this.scheduleOccurrenceIds,
  });

  int auditEntityId;
  late final int? auditId;
  late final String auditEntityName;
  late final int? auditEntityTypeId;
  late final int? auditParentEntityId;
  late final int? sequenceNo;
  late final String? entityEndDate;
  late final bool? isLeafNode;
  late final String? barcodeNfc;
  late final int? entityLevel;
  late final bool? entityException;
  late final String? scheduleOccurrenceIds;
}
