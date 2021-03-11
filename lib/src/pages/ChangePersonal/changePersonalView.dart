import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'changePersonalController.dart';

class ChangePersonalView extends StatelessWidget {
  final ChangePersonalController _changePersonalController =
      Get.put(ChangePersonalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('修改资料')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          ListTile(
            title: Text("修改头像"),
            trailing: Container(
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(80),
              child: CircleAvatar(
                backgroundColor: Color(0xff0099ff),
                radius: 60.0,
                backgroundImage: NetworkImage(
                    "https://img2.woyaogexing.com/2021/03/09/925052f54d064a29832ae9557cee21e6!400x400.jpeg"),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text("修改昵称"),
            trailing: Container(
              width: ScreenUtil().setWidth(200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: ScreenUtil().setWidth(100),
                      child: Obx(
                        () => _changePersonalController.isEditUserName.value
                            ? CupertinoTextField(
                                cursorColor: Color(0xff000000),
                                controller: _changePersonalController
                                    .editUserNameController,
                              )
                            : Text(
                                '一只大帅逼',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                      )),
                  IconButton(
                      icon: Icon(IconData(0xe66d, fontFamily: "iconFont")),
                      onPressed: () {
                        _changePersonalController.setEditing();
                      })
                ],
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text("设置性别"),
            trailing: Container(
                width: ScreenUtil().setWidth(200),
                child: Obx(
                  () => Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                              activeColor: Color(0xff0099ff),
                              value: 1,
                              groupValue: _changePersonalController.sex.value,
                              onChanged: _changePersonalController.changeSex),
                          Text("男")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              activeColor: Color(0xff0099ff),
                              value: 2,
                              groupValue: _changePersonalController.sex.value,
                              onChanged: _changePersonalController.changeSex),
                          Text("女")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              activeColor: Color(0xff0099ff),
                              value: 3,
                              groupValue: _changePersonalController.sex.value,
                              onChanged: _changePersonalController.changeSex),
                          Text("未知")
                        ],
                      )
                    ],
                  ),
                )),
          ),
          Divider(),
          ListTile(
            title: Text("联系方式"),
            trailing: Container(
              width: ScreenUtil().setWidth(200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: ScreenUtil().setWidth(100),
                      child: Obx(
                        () => _changePersonalController.isEditMobble.value
                            ? CupertinoTextField(
                                cursorColor: Color(0xff000000),
                                controller: _changePersonalController
                                    .editUserMobbleNumberController,
                              )
                            : Text(
                                '15025138973',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                      )),
                  IconButton(
                      icon: Icon(IconData(0xe66d, fontFamily: "iconFont")),
                      onPressed: () {
                        _changePersonalController.setEditingPhone();
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
