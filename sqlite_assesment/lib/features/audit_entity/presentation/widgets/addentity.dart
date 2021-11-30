import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqlite_assesment/features/audit_entity/data/datasources/database/audit_entity_table.dart';

class AddEntity extends StatefulWidget {
  const AddEntity({Key? key}) : super(key: key);

  @override
  _AddEntityState createState() => _AddEntityState();
}

class _AddEntityState extends State<AddEntity> {
  late String newTaskDate;
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildTextField(context),
          _buildDateButton(context),
        ],
      ),
    );
  }

  Expanded _buildTextField(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: 'Enter Entity Name'),
        onSubmitted: (inputName) {
          final database = Provider.of<AppDatabase>(context);
          final data = Audit(
            entity_name: inputName,
            entity_end_date: newTaskDate,
            id: 1,
          );
          database.insertNewEntry(data);
          resetValuesAfterSubmit();
        },
      ),
    );
  }

  IconButton _buildDateButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.calendar_today),
      onPressed: () async {
        newTaskDate = (await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2010),
          lastDate: DateTime(2050),
        )) as String;
      },
    );
  }

  void resetValuesAfterSubmit() {
    setState(() {
      newTaskDate = '';
      controller.clear();
    });
  }
}
