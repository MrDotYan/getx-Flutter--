import 'package:get/get.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class PersonalController extends GetxController {
  void createQrCode() async {
    final qrcode = await scanner.generateBarCode("wewerwer");
  }
}
