import 'package:get/get.dart';
import 'package:meta/meta.dart';

class MyOrderController extends GetxController {
  void toOrderDetails() {
    Get.toNamed("/orderdetails");
  }
}
