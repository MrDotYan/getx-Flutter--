import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'myOrderController.dart';

class MyOrderView extends StatelessWidget {
  final MyOrderController _myOrderController = Get.put(MyOrderController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('我的订单'),
            bottom: TabBar(
              indicatorColor: Color(0xff0099ff),
              tabs: [
                Tab(
                  child: Text('全部'),
                ),
                Tab(
                  child: Text('待付款'),
                ),
                Tab(
                  child: Text('已付款'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("订单号：5017650443265541"),
                              ),
                              Container(
                                child: Container(
                                  width: ScreenUtil().setWidth(66),
                                  height: ScreenUtil().setHeight(30),
                                  decoration: BoxDecoration(
                                      color: index % 3 == 1
                                          ? Color(0xffcccccc)
                                          : (index % 5 == 0
                                              ? Color(0xff0099ff)
                                              : Color(0xffE27171)),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(4),
                                          topRight: Radius.circular(4))),
                                  child: Center(
                                    child: Text(
                                      "已完成",
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: ScreenUtil().setWidth(188),
                                  child: Text(
                                    "烘焙课程【安德鲁森培训课程】",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "￥169.00",
                                    style: TextStyle(
                                        color: Color(0xff999999),
                                        fontSize: ScreenUtil().setSp(14)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text("共计1件商品，合计"),
                                    ),
                                    Container(
                                      child: Text(
                                        "￥5888.00",
                                        style: TextStyle(
                                            color: Color(0xffE27171),
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text(
                                          "下单时间:",
                                          style: TextStyle(
                                              color: Color(0xff999999)),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "2020-03-17 13:03:44",
                                          style: TextStyle(
                                              color: Color(0xff999999)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffffffff)),
                                    child: Text(
                                      "查看详情",
                                      style:
                                          TextStyle(color: Color(0xff000000)),
                                    ),
                                    onPressed:
                                        _myOrderController.toOrderDetails,
                                  ),
                                ),
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
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("订单号：5017650443265541"),
                              ),
                              Container(
                                child: Container(
                                  width: ScreenUtil().setWidth(66),
                                  height: ScreenUtil().setHeight(30),
                                  decoration: BoxDecoration(
                                      color: Color(0xff0099ff),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(4),
                                          topRight: Radius.circular(4))),
                                  child: Center(
                                    child: Text(
                                      "待付款",
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: ScreenUtil().setWidth(188),
                                  child: Text(
                                    "烘焙课程【安德鲁森培训课程】",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "￥169.00",
                                    style: TextStyle(
                                        color: Color(0xff999999),
                                        fontSize: ScreenUtil().setSp(14)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text("共计1件商品，合计"),
                                    ),
                                    Container(
                                      child: Text(
                                        "￥5888.00",
                                        style: TextStyle(
                                            color: Color(0xffE27171),
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text(
                                          "下单时间:",
                                          style: TextStyle(
                                              color: Color(0xff999999)),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "2020-03-17 13:03:44",
                                          style: TextStyle(
                                              color: Color(0xff999999)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffffffff)),
                                    child: Text(
                                      "查看详情",
                                      style:
                                          TextStyle(color: Color(0xff000000)),
                                    ),
                                    onPressed:
                                        _myOrderController.toOrderDetails,
                                  ),
                                ),
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
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("订单号：5017650443265541"),
                              ),
                              Container(
                                child: Container(
                                  width: ScreenUtil().setWidth(66),
                                  height: ScreenUtil().setHeight(30),
                                  decoration: BoxDecoration(
                                      color: Color(0xffE27171),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(4),
                                          topRight: Radius.circular(4))),
                                  child: Center(
                                    child: Text(
                                      "已付款",
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: ScreenUtil().setWidth(188),
                                  child: Text(
                                    "烘焙课程【安德鲁森培训课程】",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "￥169.00",
                                    style: TextStyle(
                                        color: Color(0xff999999),
                                        fontSize: ScreenUtil().setSp(14)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text("共计1件商品，合计"),
                                    ),
                                    Container(
                                      child: Text(
                                        "￥5888.00",
                                        style: TextStyle(
                                            color: Color(0xffE27171),
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Text(
                                          "下单时间:",
                                          style: TextStyle(
                                              color: Color(0xff999999)),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "2020-03-17 13:03:44",
                                          style: TextStyle(
                                              color: Color(0xff999999)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffffffff)),
                                    child: Text(
                                      "查看详情",
                                      style:
                                          TextStyle(color: Color(0xff000000)),
                                    ),
                                    onPressed:
                                        _myOrderController.toOrderDetails,
                                  ),
                                ),
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
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
