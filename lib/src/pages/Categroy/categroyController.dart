import 'package:get/get.dart';

class CategroyController extends GetxController {
  RxList<String> category1 = ["全部", "职业", "大学教育", "编程技术", "继续教育", "生活技巧"].obs;
  RxList<String> category2 =
      ["职业技能", "公务求职", "公务求职", "公务求职", "公务求职", "公务求职"].obs;
  RxList<String> category3 = ["全部", "创业培训", "创业培训", "创业培训", "创业培训", "创业培训"].obs;
  RxInt c1Index = 0.obs;
  RxInt c2Index = 0.obs;
  RxInt c3Index = 0.obs;

  void searchEvent() {}

  void toItemDeatils() {}

  void onTapCategory(index, type) {
    print(index);
    if (type == "c1") {
      c1Index.value = index;
      c2Index.value = 0;
      c3Index.value = 0;
      // 默认数据
      category2.assignAll(["123", "wewr"]);
      category3.assignAll(["123", "sdfsdf"]);
    }
    if (type == "c2") {
      c2Index.value = index;
      c3Index.value = 0;
      category3.assignAll(["123", "sdfsdf"]);
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
