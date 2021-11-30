import 'package:sqlite_assesment/features/audit_entity/data/model/audit_entity_model.dart';

// Future<AuditEntity> getJsonData() async {
//   final String response = await rootBundle.loadString('assets/entity.json');

//   final data = AuditEntity.fromJson(json.decode(response));

//   var futuredata = Future.value(data);

//   return futuredata;
// }

abstract class AuditEntityData {
  Future<AuditEntityModel> getAuditEntityData();

  Future<void> updateAuditEntityData();

  Future<void> deleteAuditEntityData();

  Future<AuditEntityModel> insertjsondata();
}
