import 'package:flutter/material.dart';
import 'package:sqlite_assesment/features/audit_entity/presentation/pages/auditpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AuditEntity App',
      home: AuditPage(),
    );
  }
}
