import 'package:get/get.dart';

class TeacherController extends GetxController {
  RxList tearchers = [].obs;

  @override
  void onInit() {
    tearchers.assignAll(List.filled(20, 1));
    super.onInit();
  }
}
