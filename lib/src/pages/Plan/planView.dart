import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart'
    as lineDatePicker;

import 'planController.dart';

class PlanView extends StatelessWidget {
  final PlanController _planController = Get.put(PlanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习计划'),
        actions: [
          IconButton(
              icon: const Icon(IconData(0xe65b, fontFamily: "iconFont")),
              onPressed: _planController.gotoCreatePlan)
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 120,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: lineDatePicker.DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  onDateChange: _planController.onDateChange,
                  locale: "zh_CN",
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  IconData(0xe67a, fontFamily: "iconFont"),
                                  color: Color(0xff999999),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "2021/3/10计划",
                                    style: TextStyle(
                                        color: Color(0xff999999),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "烘焙培训【安德鲁森培训】",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child: Text("3月10日"),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child: Text("周三"),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child: Text("12:00"),
                                        ),
                                      ],
                                    )),
                                Container(
                                  child: Divider(),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 20),
                                              backgroundColor:
                                                  Color(0xff0099fff),
                                              side: BorderSide(
                                                  color: Color(0xffffffff))),
                                          child: Text(
                                            "去学习",
                                            style: TextStyle(
                                                color: Color(0xffffffff)),
                                          ),
                                          onPressed: () {
                                            _planController.gotoCreatePlan();
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 20),
                                              backgroundColor:
                                                  Color(0xffff0000),
                                              side: BorderSide(
                                                  color: Color(0xffffffff))),
                                          child: Text(
                                            "取消计划",
                                            style: TextStyle(
                                                color: Color(0xffffffff)),
                                          ),
                                          onPressed: () {
                                            _planController.cancelPlan();
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class NoDateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(414),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text("暂无学习计划"),
          ),
        ],
      ),
    );
  }
}
