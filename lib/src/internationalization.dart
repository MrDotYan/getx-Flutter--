import 'package:get/get.dart';

class Internationalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'title': '你好 世界',
        },
        'en_US': {
          'title': 'hello World',
        }
      };
}
