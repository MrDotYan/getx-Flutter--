import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getshop/src/pages/Study/studyController.dart';

class StudyView extends StatelessWidget {
  final StudyController _studyController = Get.put(StudyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的学习'),
          actions: [
            TextButton(
                onPressed: _studyController.toPlanPage,
                child: Text(
                  "学习计划",
                  style: TextStyle(color: Color(0xff000000)),
                )),
            IconButton(
                icon: const Icon(IconData(0xe65b, fontFamily: "iconFont")),
                onPressed: _studyController.toAddPlanPage)
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              height: ScreenUtil().setHeight(144),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Center(
                child: Container(
                  height: ScreenUtil().setHeight(110),
                  width: ScreenUtil().setWidth(400),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TileTitle(
                          title: "今日学习",
                          firSubTitle: "2.5",
                          lastSubTitle: "小时",
                          color: Color(0xff0CB1FF),
                        ),
                        TileTitle(
                          title: "连续学习",
                          firSubTitle: "7",
                          lastSubTitle: "天",
                          color: Color(0xff0CB1FF),
                        ),
                        TileTitle(
                          title: "累计学习",
                          firSubTitle: "127",
                          lastSubTitle: "小时",
                          color: Color(0xff0CB1FF),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              '最近学习',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: TextButton(
                              child: Text(
                                "查看更多",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenUtil()
                          .setHeight(_studyController.itemsHeight.value),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Container(
                              width: ScreenUtil().setWidth(200),
                              child: Column(
                                children: [
                                  Container(
                                    height: ScreenUtil().setHeight(100),
                                    decoration: BoxDecoration(
                                        color: Color(0xff0099ff),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Stack(
                                    children: [
                                      Positioned(
                                          bottom: ScreenUtil().setSp(10),
                                          right: ScreenUtil().setSp(10),
                                          child: IconButton(
                                            icon: const Icon(
                                              IconData(0xe646,
                                                  fontFamily: "iconFont"),
                                              color: Color(0xff0099ff),
                                            ),
                                            onPressed: () {
                                              _studyController.toItemDeatils();
                                            },
                                          )),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Text(
                                                '中式面点师考证课程【好利来教育培训】',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        ScreenUtil().setSp(14)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Text(
                                                '价格：免费',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: Color(0xffff0000),
                                                    fontSize:
                                                        ScreenUtil().setSp(12)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Text(
                                                '讲师：一个大帅逼',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontSize:
                                                        ScreenUtil().setSp(12)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Container(
                      child: Text(
                        '我的课程',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: List<Widget>.from(_studyController.items
                          .map((ele) => Item(
                                title: "",
                                anthor: "",
                                imgUrl: "",
                                timer: "",
                                onTapEvent: () {},
                              ))
                          .toList()),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
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

class TileTitle extends StatelessWidget {
  TileTitle(
      {Key key,
      @required this.title,
      @required this.firSubTitle,
      @required this.lastSubTitle,
      this.color})
      : super(key: key);
  final String title;
  final String firSubTitle;
  final String lastSubTitle;
  final Color color;
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(124),
      height: ScreenUtil().setHeight(94),
      decoration: BoxDecoration(
          color: color ?? Color(0xffffffff),
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color(0xffffffff), fontSize: ScreenUtil().setSp(14)),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    firSubTitle,
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(16)),
                  ),
                  Text(lastSubTitle,
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: ScreenUtil().setSp(14)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
