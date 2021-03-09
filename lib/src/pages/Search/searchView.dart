import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'searchController.dart';

class SearchView extends StatelessWidget {
  final SearchController _searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoTextField(
          cursorColor: Color(0xff000000),
        ),
        actions: [
          IconButton(
              icon: const Icon(IconData(0xe69d, fontFamily: "iconFont")),
              onPressed: () {
                _searchController.searchEvent();
              })
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(IconData(0xe6bd, fontFamily: "iconFont")),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    '搜索历史',
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(414),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              children: List<Widget>.from(
                  _searchController.historys.map((element) => TextButton(
                        style: TextButton.styleFrom(
                          primary: Color(0xff999999),
                          side: BorderSide(
                              color: Color(0xff999999),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        onPressed: () {
                          _searchController.searchEvent();
                        },
                        child: Text(
                          "$element",
                          style: TextStyle(color: Color(0xff000000)),
                        ),
                      ))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(IconData(0xe701, fontFamily: "iconFont")),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    '热门搜索',
                    style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(414),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              children: List<Widget>.from(
                  _searchController.hotWords.map((element) => TextButton(
                        style: TextButton.styleFrom(
                          primary: Color(0xff999999),
                          side: BorderSide(
                              color: Color(0xff999999),
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        onPressed: () {
                          _searchController.searchEvent();
                        },
                        child: Text(
                          "$element",
                          style: TextStyle(color: Color(0xff000000)),
                        ),
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
