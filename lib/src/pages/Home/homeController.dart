import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController _textEditingController =
      new TextEditingController();

  RxList tabs = ["公开课", "职场", "科技", "办公", "编程开发", "电子商务", "创意设计"].obs;

  get textEditingController => _textEditingController;

  void searchEvent() {
    Get.toNamed('/search');
  }

  void scanEvent() {}
  void tabOnTapEvent(index) {}
  void messageEvent() {}
  void toItemDeatils() {}

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
