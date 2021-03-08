import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'categroyController.dart';

class CategroyView extends StatelessWidget {
  final CategroyController _categroyController = Get.put(CategroyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                icon: const Icon(IconData(0xe6d1, fontFamily: "iconFont")),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }),
          ),
          actions: [
            IconButton(
              icon: const Icon(IconData(0xe69d, fontFamily: "iconFont")),
              onPressed: _categroyController.searchEvent,
            ),
            PopupMenuButton<String>(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    "筛选",
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  ),
                ),
              ),
              itemBuilder: (context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: '语文',
                    child: Text('语文'),
                  ),
                  PopupMenuItem<String>(
                    value: '数学',
                    child: Text('数学'),
                  ),
                  PopupMenuItem<String>(
                    value: '英语',
                    child: Text('英语'),
                  ),
                  PopupMenuItem<String>(
                    value: '生物',
                    child: Text('生物'),
                  ),
                  PopupMenuItem<String>(
                    value: '化学',
                    child: Text('化学'),
                  ),
                ];
              },
            )
          ],
        ),
        drawer: new Drawer(
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Color(0xfff1f1f1),
                    child: ListView.builder(
                        itemCount: _categroyController.category.length,
                        itemBuilder: (context, index) => GestureDetector(
                              child: Obx(() => Container(
                                    decoration: BoxDecoration(
                                        color:
                                            _categroyController.c1Index.value ==
                                                    index
                                                ? Color(0xfff5f5f5)
                                                : Color(0xfff1f1f1),
                                        border: _categroyController
                                                    .c1Index.value ==
                                                index
                                            ? Border.symmetric(
                                                horizontal: BorderSide(
                                                    color: Color(0xff000000),
                                                    width: 1))
                                            : Border.symmetric(
                                                horizontal: BorderSide.none)),
                                    height: ScreenUtil().setHeight(40),
                                    child: Center(
                                      child: Text(
                                          '${_categroyController.category[index]}'),
                                    ),
                                  )),
                              onTap: () {
                                _categroyController.onTapCategory(index, "c1");
                              },
                            )),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xfff5f5f5),
                  child: ListView.builder(
                      itemCount: _categroyController.category.length,
                      itemBuilder: (context, index) => GestureDetector(
                            child: Obx(() => Container(
                                  color:
                                      _categroyController.c2Index.value == index
                                          ? Color(0xfff9f9f9)
                                          : Color(0xfff5f5f5),
                                  height: ScreenUtil().setHeight(40),
                                  child: Center(
                                    child: Text(
                                        '${_categroyController.category[index]}'),
                                  ),
                                )),
                            onTap: () {
                              _categroyController.onTapCategory(index, "c2");
                            },
                          )),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Color(0xfff9f9f9),
                    child: ListView.builder(
                        itemCount: _categroyController.category.length,
                        itemBuilder: (context, index) => GestureDetector(
                              child: Obx(
                                () => Container(
                                  color:
                                      _categroyController.c3Index.value == index
                                          ? Color(0xffffffff)
                                          : Color(0xfff9f9f9),
                                  height: ScreenUtil().setHeight(40),
                                  child: Center(
                                    child: Text(
                                        '${_categroyController.category[index]}'),
                                  ),
                                ),
                              ),
                              onTap: () {
                                _categroyController.onTapCategory(index, "c3");
                              },
                            )),
                  ))
            ],
          ),
        ),
        body: Container());
  }
}
