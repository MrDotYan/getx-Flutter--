import 'package:get/get.dart';

class SearchResultController extends GetxController {
  RxList results = [].obs;
  void cancelBtnEvent() {
    Get.offNamed('/search');
  }

  @override
  void onInit() {
    results.assignAll(List.filled(30, 1));
    super.onInit();
  }
}
