import 'dart:io';

import 'package:get/get.dart';

class StudyController extends GetxController {
  RxList items = [].obs;
  RxDouble itemsHeight = 230.0.obs;
  void toItemDeatils() {}

  void checkPlatform() {
    if (Platform.isIOS) {
      itemsHeight.value = 260.0;
    }
  }

  @override
  void onInit() {
    items.assignAll(List.filled(20, 1));
    checkPlatform();
    super.onInit();
  }
}
