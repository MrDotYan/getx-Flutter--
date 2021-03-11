import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'addPlanController.dart';

class AddPlanView extends StatelessWidget {
  final AddPlanController _addPlanController = Get.put(AddPlanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('添加计划')),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: ScreenUtil().setSp(20),
            ),
            ListTile(
              title: Text("我的计划"),
              trailing: Container(
                width: ScreenUtil().setWidth(200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(
                      () => Text(
                        "${_addPlanController.groupValue.value == -1 ? '从我的课程里选择' : _addPlanController.groupValue}",
                        style: TextStyle(color: Color(0xff999999)),
                      ),
                    ),
                    const Icon(IconData(0xe66d, fontFamily: "iconFont"))
                  ],
                ),
              ),
              onTap: () {
                Get.defaultDialog(
                    title: "我的课程",
                    content: Container(
                      height: ScreenUtil().setHeight(200),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children:
                              List<Widget>.from(_addPlanController.myClesses
                                  .asMap()
                                  .keys
                                  .map(
                                    (element) => Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text("C编程"),
                                          ),
                                          Container(
                                            child: Obx(() => Radio(
                                                  activeColor:
                                                      Color(0xff0099ff),
                                                  value: element,
                                                  groupValue: _addPlanController
                                                      .groupValue.value,
                                                  onChanged: (value) {
                                                    _addPlanController
                                                        .selectRadioValue(
                                                            value);
                                                  },
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList()),
                        ),
                      ),
                    ));
              },
            ),
            Divider(),
            ListTile(
              title: Text("设置时间"),
              trailing: Container(
                width: ScreenUtil().setWidth(200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(
                      () => Text(
                        "${_addPlanController.timers.toString().split('.')[0]}",
                        style: TextStyle(color: Color(0xff999999)),
                      ),
                    ),
                    const Icon(IconData(0xe66d, fontFamily: "iconFont"))
                  ],
                ),
              ),
              onTap: () {
                DatePicker.showDateTimePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2000),
                    maxTime: DateTime(3000), onConfirm: (date) {
                  _addPlanController.setTimeer(date);
                }, locale: LocaleType.zh);
              },
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  backgroundColor: Color(0xff0099fff),
                ),
                child: Text(
                  "创建计划",
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                onPressed: () {
                  _addPlanController.createPlans();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
