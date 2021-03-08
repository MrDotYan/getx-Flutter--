import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'services/devices.dart';

class AppService extends GetxService {
  MyDevicesInfo info = MyDevicesInfo();
  Future<AppService> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    final infomations = await info.read();
    print(infomations);
    return this;
  }
}
