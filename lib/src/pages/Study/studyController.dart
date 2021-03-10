import 'dart:io';

import 'package:get/get.dart';

class StudyController extends GetxController {
  RxList items = [].obs;
  RxDouble itemsHeight = 230.0.obs;
  void toItemDeatils() {}

  void toAddPlanPage() {
    Get.toNamed('/addplans');
  }

  void checkPlatform() {
    if (Platform.isIOS) {
      itemsHeight.value = 260.0;
    }
  }

  void toPlanPage() {
    Get.toNamed('/plan');
  }

  @override
  void onInit() {
    items.assignAll(List.filled(20, 1));
    checkPlatform();
    super.onInit();
  }
}
