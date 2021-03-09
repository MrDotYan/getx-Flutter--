import 'package:get/get.dart';

class StudyController extends GetxController {
  RxList items = [].obs;
  void toItemDeatils() {}
  @override
  void onInit() {
    items.assignAll(List.filled(20, 1));
    super.onInit();
  }
}
