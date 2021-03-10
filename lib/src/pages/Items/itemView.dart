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
      appBar: AppBar(title: Text('MyPage')),
      body: Column(
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
                    )))
        ],
      ),
    );
  }
}
