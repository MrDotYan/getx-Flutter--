import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './src/router/routes.dart';
import './src/internationalization.dart';
import './src/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  await initServices();
  print('runing Applications');
  runApp(app);
}

final app = ScreenUtilInit(
    designSize: Size(414, 736),
    allowFontScaling: false,
    builder: () => GetMaterialApp(
          title: "getshop",
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          enableLog: true,
          logWriterCallback: localLogWriter,
          getPages: router,
          theme: ThemeData(
              primarySwatch: createMaterialColor(Color(0xffffffff)),
              primaryColor: Color(0xffffffff),
              primaryColorBrightness: Brightness.light),
          translations: Internationalization(), // 你的翻译
          locale: Locale('zh', 'CN'), // 将会按照此处指定的语言翻译
          fallbackLocale: Locale('en', 'US'), // 添加一个回调语言选项，以备上面指定的语言翻译不存在
        ));

void localLogWriter(String text, {bool isError = false}) {
  // 在这里把信息传递给你最喜欢的日志包。
  // 请注意，即使enableLog: false，日志信息也会在这个回调中被推送。
  // 如果你想的话，可以通过GetConfig.isLogEnable来检查这个标志。
  print(text);
}

Future<void> initServices() async {
  print('init services');
  await Get.putAsync(() => AppService().init());
  print('services runing end');
}

// createMaterialColor
// 创建：material color
// 参数：Color
// 返回值：materialColor
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
