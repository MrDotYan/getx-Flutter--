import 'dart:io';

import 'package:get/get.dart';

class SearchResultController extends GetxController {
  RxList results = [].obs;

  RxDouble searchBoxHeight = 140.0.obs;
  void cancelBtnEvent() {
    Get.offNamed('/search');
  }

  void checkPlatform() {
    if (Platform.isIOS) {
      searchBoxHeight.value = 160.0;
    }
  }

  @override
  void onInit() {
    results.assignAll(List.filled(30, 1));
    checkPlatform();
    super.onInit();
  }
}
