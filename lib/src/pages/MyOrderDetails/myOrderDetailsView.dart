import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'myOrderDetailsController.dart';

class MyOrderDetailsView extends StatelessWidget {
  final MyOrderDetailsController _myOrderDetailsController =
      Get.put(MyOrderDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('订单详情')),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Card(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Container(
                        child: Text(
                          "购买人：",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: ScreenUtil().setSp(14),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          '曲靖彭于晏',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: ScreenUtil().setSp(14),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
                  Container(
                    child: Container(
                      child: Text(
                        "15025138973",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: ScreenUtil().setSp(12),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: ScreenUtil().setWidth(188),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "烘焙课程【安德鲁森培训课程】",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text("￥189.00"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            width: ScreenUtil().setWidth(123),
                            height: ScreenUtil().setHeight(66),
                            color: Color(0xff0099ff),
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text("优惠信息："),
                                    ),
                                    Container(
                                      child: Text("首单分享立减20"),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text("已支付"),
                                    ),
                                    Container(
                                      child: Text(
                                        "￥169",
                                        style: TextStyle(
                                            color: Color(0xffEA8E8E),
                                            fontSize: ScreenUtil().setSp(16)),
                                      ),
                                    )
                                  ],
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
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(80),
                            child: Text("订单号："),
                          ),
                          Container(
                            child: Text("2019021422001113201027760091"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(80),
                            child: Text("订单状态："),
                          ),
                          Container(
                            child: Text("交易完成"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(80),
                            child: Text("下单时间："),
                          ),
                          Container(
                            child: Text("2020-02-14 15:12:00"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(80),
                            child: Text("付款时间："),
                          ),
                          Container(
                            child: Text("2020-02-14 15:14:41"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            width: ScreenUtil().setWidth(80),
                            child: Text("支付方式："),
                          ),
                          Container(
                            child: Text("微信支付"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffff0000)),
                              child: Text(
                                "取消",
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: TextButton(
                              // 0099ff
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xff0099ff)),
                              child: Text("去付款"),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      icon: const Icon(
                        IconData(0xe685, fontFamily: "iconFont"),
                      ),
                      onPressed: () {}),
                  Text("联系客服")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
