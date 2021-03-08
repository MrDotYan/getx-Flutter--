import 'package:get/get.dart';

class CategroyController extends GetxController {
  RxList category = ["全部", "职业", "大学教育", "编程技术", "继续教育", "生活技巧"].obs;
  RxInt c1Index = 0.obs;
  RxInt c2Index = 0.obs;
  RxInt c3Index = 0.obs;

  void searchEvent() {}

  void onTapCategory(index, type) {
    print(index);
    if (type == "c1") {
      c1Index.value = index;
    }
    if (type == "c2") {
      c2Index.value = index;
    }
    if (type == "c3") {
      c3Index.value = index;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
