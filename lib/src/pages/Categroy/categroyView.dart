import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Home/homeController.dart';
import 'categroyController.dart';
import 'pickerdata.dart';

class CategroyView extends StatelessWidget {
  final CategroyController _categroyController = Get.put(CategroyController());
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                icon: const Icon(IconData(0xe6d1, fontFamily: "iconFont")),
                onPressed: () {
                  Picker(
                      adapter: PickerDataAdapter<String>(
                          pickerdata: JsonDecoder().convert(PickerData)),
                      changeToFirst: true,
                      hideHeader: false,
                      confirmText: "确定",
                      cancelText: "取消",
                      confirmTextStyle: TextStyle(color: Color(0xff000000)),
                      cancelTextStyle: TextStyle(color: Color(0xff000000)),
                      selectedTextStyle: TextStyle(color: Colors.blue),
                      onConfirm: (Picker picker, List value) {
                        print(value.toString());
                        print(picker.adapter.text);
                      }).showModal(context);
                }),
          ),
          actions: [
            IconButton(
              icon: const Icon(IconData(0xe69d, fontFamily: "iconFont")),
              onPressed: _categroyController.searchEvent,
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
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
        body: GridView.builder(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: _homeController.childAspectRatio.value,
            ),
            itemCount: 200,
            itemBuilder: (context, index) => Card(
                  child: Column(
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(100),
                        decoration: BoxDecoration(
                            color: Color(0xff0099ff),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Stack(
                        children: [
                          Positioned(
                              bottom: ScreenUtil().setSp(10),
                              right: ScreenUtil().setSp(10),
                              child: IconButton(
                                icon: const Icon(
                                  IconData(0xe646, fontFamily: "iconFont"),
                                  color: Color(0xff0099ff),
                                ),
                                onPressed: () {
                                  _categroyController.toItemDeatils();
                                },
                              )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    '中式面点师考证课程【好利来教育培训】',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil().setSp(14)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    '价格：免费',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Color(0xffff0000),
                                        fontSize: ScreenUtil().setSp(12)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    '讲师：一个大帅逼',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: ScreenUtil().setSp(12)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )));
  }
}

class ItemPicker extends StatelessWidget {
  ItemPicker(
      {Key key,
      @required this.items,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  final List items;
  final int selectedIndex;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(40),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${items[index]}',
                        style: TextStyle(
                            color: selectedIndex == index
                                ? Color(0xff0099ff)
                                : Color(0xff000000)),
                      ),
                      selectedIndex == index
                          ? Container(
                              margin: EdgeInsets.only(left: 4),
                              child: Icon(
                                IconData(0xe65a, fontFamily: "iconFont"),
                                size: ScreenUtil().setSp(16),
                                color: selectedIndex == index
                                    ? Color(0xff0099ff)
                                    : Color(0xff000000),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
              onTap: () {
                onTap(index);
              },
            ));
  }
}
