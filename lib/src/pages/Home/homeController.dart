import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomeController extends GetxController {
  final TextEditingController _textEditingController =
      new TextEditingController();
  RxDouble childAspectRatio = 0.9.obs;

  RxList tabs = ["公开课", "职场", "科技", "办公", "编程开发", "电子商务", "创意设计"].obs;

  get textEditingController => _textEditingController;

  void searchEvent() {
    Get.toNamed('/search');
  }

  void scanEvent() async {
    String cameraScanResult = await scanner.scan();
    print(cameraScanResult);
  }

  void tabOnTapEvent(index) {}
  void messageEvent() {}
  void toItemDeatils() {}

  void checkPlatfrom() {
    if (Platform.isIOS) {
      childAspectRatio.value = 0.8;
    }
  }

  @override
  void onInit() {
    checkPlatfrom();
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
