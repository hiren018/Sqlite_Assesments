import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sqlite_assesment/features/audit_entity/data/datasources/audit_entity_data.dart';
import 'package:sqlite_assesment/features/audit_entity/data/model/audit_entity_model.dart';
import 'package:sqlite_assesment/features/audit_entity/domain/entities/audit_entity.dart';

class AuditEntityDataImpl implements AuditEntityData {
  @override
  Future<void> deleteAuditEntityData() {
    // TODO: implement deleteDataFromAuditTable
    throw UnimplementedError();
  }

  @override
  Future<AuditEntityModel> getAuditEntityData() {
    // TODO: implement getDataFromAuditTable
    throw UnimplementedError();
  }

  @override
  Future<AuditEntityModel> insertjsondata() async {
    final String response = await rootBundle.loadString('assets/entity.json');

    final data = AuditEntityModel.fromJson(json.decode(response));

    var futuredata = Future.value(data);

    return futuredata;
  }

  @override
  Future<void> updateAuditEntityData() {
    // TODO: implement updateDataIntoAuditTable
    throw UnimplementedError();
  }
}
