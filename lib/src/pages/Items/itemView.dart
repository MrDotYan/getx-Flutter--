import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'itemController.dart';

class ItemView extends StatelessWidget {
  final ItemController _itemController = Get.put(ItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('课程详情')),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Obx(() => Container(
                child: _itemController.isReady.value
                    ? Container(
                        height: ScreenUtil().setHeight(300),
                        child: Chewie(
                          controller: _itemController.chewieController,
                        ),
                      )
                    : Container(
                        height: ScreenUtil().setHeight(242),
                        width: ScreenUtil().setWidth(414),
                        color: Color(0xff000000),
                        child: Center(
                          child: Text(
                            '正在努力加载中...',
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                        ),
                      ))),
            Container(
              color: Color(0xffffffff),
              width: ScreenUtil().setWidth(414),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    child: Text(
                      "中外影视作品与当代社会研究",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000)),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "￥298",
                                style: TextStyle(color: Color(0xffff0000)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "1280已付款",
                                style: TextStyle(color: Color(0xff999999)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "1.2w人观看",
                                style: TextStyle(color: Color(0xff999999)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "赛事研学",
                                style: TextStyle(color: Color(0xff999999)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "科学在线",
                                style: TextStyle(color: Color(0xff999999)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      '导师 QY 丨 复旦大学博士 丨 复旦大学中华古籍保护研究院 助理研究员\n用社会学的视角去判断影视作品中设置的人物、事件、背景及暗示的各种场景，是探讨现当代社会史、思想史的...',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffffffff)),
                        child: Text(
                          "查看更多",
                          style: TextStyle(color: Color(0xff000000)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(414),
                    padding: EdgeInsets.all(20),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xff0099ff)),
                      child: Text("购买课程"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: ScreenUtil().setWidth(414),
              color: Color(0xffffffff),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: ScreenUtil().setWidth(414),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "课程列表",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: ScreenUtil().setSp(16)),
                                ),
                              ),
                              Container(
                                child: Text("(共12课)"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: TextButton(
                            child: Text(
                              "查看更多",
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: List<Widget>.from(
                        _itemController.classesList.asMap().keys.map((e) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text("1.线性代数_第1讲..."),
                                      IconButton(
                                          icon: Icon(Icons.play_circle_filled),
                                          onPressed: () {})
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text("1:20:45"),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      );
                    }).toList()),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: ScreenUtil().setWidth(414),
              color: Color(0xffffffff),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "评论",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: ScreenUtil().setSp(16)),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            child: Text(
                              "查看更多",
                              style: TextStyle(color: Color(0xff000000)),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: ScreenUtil().setWidth(60),
                                height: ScreenUtil().setHeight(60),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff0099ff),
                                  backgroundImage: NetworkImage(
                                      "https://img2.woyaogexing.com/2021/03/09/925052f54d064a29832ae9557cee21e6!400x400.jpeg"),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "张三",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      width: ScreenUtil().setWidth(300),
                                      child: Text(
                                        "用户创建的内容文本六行，用户创建的内容文本六行，用户创建的内容文本六行，用户创建的内容文本六行，用户创建的内容文本六行…",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: ScreenUtil().setWidth(300),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text(
                                              "2020-03-13",
                                              style: TextStyle(
                                                  color: Color(0xff999999)),
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                IconButton(
                                                    icon: const Icon(
                                                      IconData(0xe669,
                                                          fontFamily:
                                                              "iconFont"),
                                                      color: Color(0xff999999),
                                                    ),
                                                    onPressed: () {}),
                                                Text(
                                                  '123',
                                                  style: TextStyle(
                                                      color: Color(0xff999999)),
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
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
