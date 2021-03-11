import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePersonalController extends GetxController {
  RxBool isEditUserName = false.obs;
  final TextEditingController _editUserNameController =
      new TextEditingController();
  final TextEditingController _editUserMobbleNumberController =
      new TextEditingController();

  RxInt sex = 1.obs;
  RxString mobbleNumber = "".obs;
  RxBool isEditMobble = false.obs;

  get editUserNameController => _editUserNameController;
  get editUserMobbleNumberController => _editUserMobbleNumberController;

  void setEditing() {
    isEditUserName.value = !isEditUserName.value;
  }

  void changeSex(sexStr) {
    print(sexStr);
    sex.value = sexStr;
  }

  void setEditingPhone() {
    isEditMobble.value = !isEditMobble.value;
  }

  @override
  void onClose() {
    _editUserNameController.dispose();
    super.onClose();
  }
}
