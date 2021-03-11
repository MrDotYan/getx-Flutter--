import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'TestController.dart';
import 'package:video_player/video_player.dart';

class TestView extends StatelessWidget {
  final TestController _testController = Get.put(TestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyPage')),
      body: Container(
        child: Column(
          children: [
            Obx(() => _testController.isReady.value
                ? AspectRatio(
                    aspectRatio:
                        _testController.videoController.value.aspectRatio,
                    child: VideoPlayer(_testController.videoController),
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
                  )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Obx(() => _testController.isPlay.value
                      ? const Icon(Icons.pause)
                      : const Icon(Icons.play_arrow)),
                  onPressed: () {
                    _testController.play();
                  },
                ),
                Obx(() => Container(
                      child: Row(
                        children: [
                          Text(
                              "${_testController.duration.split(".")[0]}/${_testController.position.split(".")[0]}")
                        ],
                      ),
                    )),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          icon: const Icon(Icons.crop_free),
                          onPressed: _testController.fullScreen),
                      IconButton(
                          icon: const Icon(Icons.refresh),
                          onPressed: _testController.reSatrt)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
