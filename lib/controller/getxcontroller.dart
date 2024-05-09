import 'package:get/get.dart';

import 'diofunction.dart';

class DataController extends GetxController {
  var dataList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData().then((data) {
      dataList.assignAll(data?['data']['list'] ?? []);
    });
  }
}
