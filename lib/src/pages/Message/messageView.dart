import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'messageController.dart';

class MessageView extends StatelessWidget {
  final MessageController _messageController = Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('消息中心')),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(160),
                        decoration: BoxDecoration(
                            color: Color(0xff0099ff),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "终于要揭晓为你准备的【年末礼物】了！参与100%有奖...",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: ScreenUtil().setSp(14)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "终于要揭晓为你准备的【年末礼物】了！参与100%有奖...终于要揭晓为你准备的【年末礼物】了！参与100%有奖...终于要揭晓为你准备的【年末礼物】了！参与100%有奖...终于要揭晓为你准备的【年末礼物】了！参与100%有奖...",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: ScreenUtil().setSp(12)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
