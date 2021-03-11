import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的收藏')),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
                color: Color(0xfff5f5f5),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Item(
                    title: "title",
                    anthor: "anthor",
                    imgUrl: "imgUrl",
                    timer: "timer",
                    onTapEvent: () {}));
          }),
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
      padding: EdgeInsets.symmetric(vertical: 10),
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
