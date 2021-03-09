import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:get/get.dart';
import 'TeacherController.dart';

class TeacherView extends StatelessWidget {
  final TeacherController _teacherController = Get.put(TeacherController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('讲师介绍')),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xffffffff),
                  padding:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(80),
                        height: ScreenUtil().setHeight(80),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff0099ff),
                          radius: 60.0,
                          backgroundImage: NetworkImage(
                              "https://img2.woyaogexing.com/2021/03/09/925052f54d064a29832ae9557cee21e6!400x400.jpeg"),
                        ),
                      ),
                      Container(
                        width: ScreenUtil().setWidth(280),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "一个大帅逼",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: ScreenUtil().setSp(20),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Wrap(
                                    runAlignment: WrapAlignment.start,
                                    alignment: WrapAlignment.start,
                                    spacing: 6,
                                    runSpacing: 6,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        color: Color(0xfff5f5f5),
                                        child: Text('职业总监'),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        color: Color(0xfff5f5f5),
                                        child: Text('技术大佬'),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xffffffff),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextContainer(
                        title: "教师资质",
                        subTitle: "教师资质：20191100142008608",
                      ),
                      TextContainer(
                        title: "教学经历",
                        subTitle: "2015.04-至今 安德鲁森中国公司就业创业部培训总监",
                      ),
                      TextContainer(
                        title: "教学特点",
                        subTitle: "寓教于乐，逻辑清晰。方法实用，接地气。集美貌与才华于一身，专业功底扎实。",
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color(0xffffffff),
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Container(
                          child: Text(
                            'ta的课程',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.from(_teacherController.tearchers
                              .asMap()
                              .keys
                              .map((index) {
                            return Item(
                                title: "title",
                                anthor: "anthor",
                                imgUrl: "imgUrl",
                                timer: "timer",
                                onTapEvent: () {});
                          })),
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
    );
  }
}

class TextContainer extends StatelessWidget {
  TextContainer({Key key, @required this.title, @required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "$title",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              "$subTitle",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(14), color: Color(0xff999999)),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  Item(
      {Key key,
      @required this.title,
      @required this.anthor,
      @required this.imgUrl,
      @required this.timer,
      @required this.onTapEvent})
      : super(key: key);
  final String title;
  final String anthor;
  final String timer;
  final String imgUrl;
  final Function onTapEvent;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Color(0xffffffff),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff0099ff),
                    borderRadius: BorderRadius.circular(10)),
                width: ScreenUtil().setWidth(174),
                height: ScreenUtil().setHeight(94),
              ),
              Container(
                height: ScreenUtil().setHeight(94),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        '跑步锻炼，有氧运动',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        '讲师：一只大帅逼',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        '课时：35',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
              right: 10,
              bottom: 10,
              child: IconButton(
                icon: const Icon(
                  IconData(0xe646, fontFamily: "iconFont"),
                  color: Color(0xff0099ff),
                ),
                onPressed: () {
                  onTapEvent();
                },
              ))
        ],
      ),
    );
  }
}

class Teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Color(0xffffffff),
      child: ListTile(
        leading: Container(
          width: ScreenUtil().setWidth(80),
          height: ScreenUtil().setHeight(80),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://img2.woyaogexing.com/2021/03/09/925052f54d064a29832ae9557cee21e6!400x400.jpeg"),
          ),
        ),
        title: Text("一只大帅逼"),
        subtitle: Text("职业技师"),
        trailing: IconButton(
          icon: Icon(
            IconData(0xe66d, fontFamily: "iconFont"),
          ),
          onPressed: () {
            Get.toNamed('/teacher');
          },
        ),
      ),
    );
  }
}
