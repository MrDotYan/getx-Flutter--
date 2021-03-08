import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'homeController.dart';

class HomeView extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _homeController.tabs.length,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xffffffff),
              expandedHeight: ScreenUtil().setHeight(200),
              floating: false,
              pinned: true,
              snap: false,
              forceElevated: false,
              title: Text('学无止境'),
              leading: IconButton(
                icon: const Icon(IconData(0xe674, fontFamily: "iconFont")),
                onPressed: _homeController.scanEvent,
              ),
              actions: [
                IconButton(
                  icon: const Icon(IconData(0xe69d, fontFamily: "iconFont")),
                  onPressed: _homeController.searchEvent,
                ),
                IconButton(
                  icon: const Icon(IconData(0xe661, fontFamily: "iconFont")),
                  onPressed: _homeController.messageEvent,
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [StretchMode.zoomBackground],
                background: Container(
                  margin: EdgeInsets.only(
                    bottom: ScreenUtil().setSp(50),
                  ),
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        "https://edu-image.nosdn.127.net/307e3bbd-0b8f-4166-a8ad-a694476020e8.png?imageView&quality=100&thumbnail=690y272",
                        fit: BoxFit.fitHeight,
                      );
                    },
                    itemCount: 3,
                    pagination: new SwiperPagination(),
                  ),
                ),
              ),
              bottom: TabBar(
                indicatorColor: Color(0xff0099ff),
                isScrollable: true,
                onTap: _homeController.tabOnTapEvent,
                indicatorWeight: 2.0,
                tabs: List<Tab>.from(_homeController.tabs
                    .map((element) => Tab(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "$element",
                            ),
                          ),
                        ))
                    .toList()),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.9,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          height: ScreenUtil().setHeight(100),
                          decoration: BoxDecoration(
                              color: Color(0xff0099ff),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Stack(
                          children: [
                            Positioned(
                                bottom: ScreenUtil().setSp(10),
                                right: ScreenUtil().setSp(10),
                                child: IconButton(
                                  icon: const Icon(
                                    IconData(0xe646, fontFamily: "iconFont"),
                                    color: Color(0xff0099ff),
                                  ),
                                  onPressed: () {
                                    _homeController.toItemDeatils();
                                  },
                                )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      '中式面点师考证课程【好利来教育培训】',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                          fontSize: ScreenUtil().setSp(14)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      '价格：免费',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xffff0000),
                                          fontSize: ScreenUtil().setSp(12)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      '讲师：一个大帅逼',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: ScreenUtil().setSp(12)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                childCount: 200,
              ),
            )
          ],
        ));
  }
}
