import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/getxcontroller.dart';

class DataScreen extends StatelessWidget {
  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data List'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Type')),
          ],
          rows: dataController.dataList.map((item) {
            return DataRow(
              cells: [
                DataCell(Text(item['_name'] ?? '')),
                DataCell(Text(item['_docType'].toString() ?? '')),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
