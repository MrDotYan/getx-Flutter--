import 'package:get/get.dart';

class AddPlanController extends GetxController {
  RxList myClesses = [].obs;
  RxInt groupValue = (-1).obs;
  Rx<DateTime> timers = DateTime.now().obs;

  void createPlans() {}

  void selectRadioValue(value) {
    print(value);
    groupValue.value = value;
  }

  void setTimeer(timer) {
    timers.value = timer;
  }

  @override
  void onInit() {
    myClesses.assignAll(List.filled(8, 10));
    super.onInit();
  }
}
