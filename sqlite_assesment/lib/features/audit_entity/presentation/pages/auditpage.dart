import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:sqlite_assesment/features/audit_entity/data/datasources/database/audit_entity_table.dart';
import 'package:sqlite_assesment/features/audit_entity/presentation/widgets/addentity.dart';

class AuditPage extends StatefulWidget {
  const AuditPage({Key? key}) : super(key: key);

  @override
  _AuditPageState createState() => _AuditPageState();
}

class _AuditPageState extends State<AuditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AuditEntity'),
        ),
        body: Column(
          children: [
            Expanded(child: _buildbody(context)),
            const AddEntity(),
          ],
        ));
  }
}

StreamBuilder<List<Audit>> _buildbody(BuildContext context) {
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllEntries(),
    builder: (BuildContext context, AsyncSnapshot<List<Audit>> snapshot) {
      final data = snapshot.data;
      return ListView.builder(
          itemCount: data!.length,
          itemBuilder: (_, index) {
            final itemdata = data[index];
            return _buildListItem(itemdata, database);
          });
    },
  );
}

Widget _buildListItem(Audit itemdata, AppDatabase database) {
  return Slidable(
    endActionPane: ActionPane(
      motion: const ScrollMotion(),
      dismissible: DismissiblePane(onDismissed: () {}),
      children: const [
        SlidableAction(
            onPressed: deleteitem,
            backgroundColor: Colors.red,
            label: 'Delete',
            icon: Icons.delete)
      ],
    ),
    child: ListTile(
      title: Text(
        itemdata.entity_name,
      ),
      subtitle: Text(itemdata.entity_end_date.toString()),
    ),
  );
}

deleteitem(BuildContext context) {
  Audit? itemdata;
  AppDatabase? database;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: const Text('Are you sure want to delete?'),
            actions: [
              TextButton(
                onPressed: () {
                  database!.deleteEntity(itemdata!);
                },
                child: const Text('Cancle'),
              )
            ]);
      });
}
