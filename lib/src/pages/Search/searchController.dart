import 'package:get/get.dart';

class SearchController extends GetxController {
  RxList historys = ["Vue", "Flutter", "React"].obs;
  RxList hotWords = ["Vue", "Flutter", "React", "面试宝典", "大师之作"].obs;

  void searchEvent() {
    Get.offNamed('/searchResult');
  }
}
