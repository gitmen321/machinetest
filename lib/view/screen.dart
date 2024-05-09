import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getxcontroller.dart';

class DataScreen extends StatelessWidget {
  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data List'),
      ),
      body: GetBuilder<DataController>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.dataList.length,
            itemBuilder: (context, index) {
              final item = controller.dataList[index];
              return ListTile(
                title: Text(item['_name'] ?? ''),
                subtitle: Text(item['_docType'].toString() ?? ''),
                onTap: () {
                  // Handle onTap event
                },
              );
            },
          );
        },
      ),
    );
  }
}
