import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'personalController.dart';

class PersonalView extends StatelessWidget {
  final PersonalController _personalController = Get.put(PersonalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('个人中心')),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            color: Color(0xffffffff),
            padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
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
                  height: ScreenUtil().setHeight(80),
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
                            child: Text(
                              '签名：阿巴阿巴阿巴',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: ScreenUtil().setSp(12),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(IconData(0xe66d, fontFamily: "iconFont")),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            width: ScreenUtil().setWidth(414),
            height: ScreenUtil().setHeight(100),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          IconData(0xe6a3, fontFamily: "iconFont"),
                          size: ScreenUtil().setSp(32),
                          color: Color(0xffFF0000),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('消息中心'),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          IconData(0xe687, fontFamily: "iconFont"),
                          size: ScreenUtil().setSp(32),
                          color: Color(0xff0099ff),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('我的订单'),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          IconData(0xe6d9, fontFamily: "iconFont"),
                          size: ScreenUtil().setSp(32),
                          color: Color(0xffFF9663),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('我的收藏'),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          IconData(0xe70e, fontFamily: "iconFont"),
                          size: ScreenUtil().setSp(32),
                          color: Color(0xff6DC563),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text('学习足迹'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  width: ScreenUtil().setWidth(414),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Text(
                    '常用工具',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(300),
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 1,
                    ),
                    children: [
                      GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                IconData(0xe66c, fontFamily: "iconFont"),
                                size: ScreenUtil().setSp(32),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text('关于我们'),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                IconData(0xe6ab, fontFamily: "iconFont"),
                                size: ScreenUtil().setSp(32),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text('我的卡卷'),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                IconData(0xe685, fontFamily: "iconFont"),
                                size: ScreenUtil().setSp(32),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text('反馈建议'),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                IconData(0xe677, fontFamily: "iconFont"),
                                size: ScreenUtil().setSp(32),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text('系统设置'),
                              )
                            ],
                          ),
                        ),
                      ),
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
