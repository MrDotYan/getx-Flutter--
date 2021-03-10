import 'package:get/get.dart';

class PlanController extends GetxController {
  void onDateChange(date) {
    print(date);
  }

  void gotoCreatePlan() {
    Get.toNamed('/addplans');
  }

  void cancelPlan() {}
}
