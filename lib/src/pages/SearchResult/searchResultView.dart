import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'searchResultController.dart';

class SearchResultView extends StatelessWidget {
  final SearchResultController _searchResultController =
      Get.put(SearchResultController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 4,
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  floating: false,
                  pinned: true,
                  snap: false,
                  forceElevated: false,
                  title: Text("搜索"),
                  expandedHeight: ScreenUtil().setHeight(140),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                        alignment: Alignment.bottomCenter,
                        height: ScreenUtil().setHeight(140),
                        width: ScreenUtil().setWidth(414),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 12,
                                child: Container(
                                  child: CupertinoTextField(
                                    cursorColor: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                          primary: Color(0xff999999),
                                        ),
                                        onPressed: () {
                                          _searchResultController
                                              .cancelBtnEvent();
                                        },
                                        child: Text(
                                          "取消",
                                          style: TextStyle(
                                              color: Color(0xff000000)),
                                        )),
                                  ))
                            ],
                          ),
                        )),
                  ),
                  bottom: TabBar(
                    indicatorColor: Color(0xff0099ff),
                    tabs: [
                      Tab(
                        child: Text("全部"),
                      ),
                      Tab(
                        child: Text("课程"),
                      ),
                      Tab(
                        child: Text("讲师"),
                      ),
                      Tab(
                        child: Text("文章"),
                      )
                    ],
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Column(
                    children: List.from(_searchResultController.results
                        .asMap()
                        .keys
                        .map((index) {
                      if (index < 1) {
                        return ArtcleResult();
                      } else if (index >= 1 && index < 2) {
                        return Teacher();
                      } else {
                        return Item(
                            title: "title",
                            anthor: "anthor",
                            imgUrl: "imgUrl",
                            timer: "timer",
                            onTapEvent: () {});
                      }
                    })),
                  )
                ]))
              ],
            )));
  }
}

class ArtcleResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        color: Color(0xffffffff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                '建筑er考研“培训”流程+指南',
                style: TextStyle(
                    color: Color(0xff000000), fontSize: ScreenUtil().setSp(16)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(236),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "2月15日，2019年全国硕士研究生招生考试初试成绩出分日如约而…",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          margin: EdgeInsets.only(bottom: 10),
                        ),
                        Container(
                          child: Text(
                            "123456次浏览",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(12.0),
                                color: Color(0xff999999)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(95),
                    height: ScreenUtil().setHeight(78),
                    decoration: BoxDecoration(
                        color: Color(0xff0099ff),
                        borderRadius: BorderRadius.circular(10)),
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
