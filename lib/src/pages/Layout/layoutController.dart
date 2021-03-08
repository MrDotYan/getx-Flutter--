import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  RxInt _pageIndex = 0.obs;
  PageController _pageController = new PageController();

  get pageController => _pageController;
  get pageIndex => _pageIndex;

  void onTapNavBarItem(index) {
    pageIndex.value = index;
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
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
    _pageController.dispose();
    super.onClose();
  }
}
