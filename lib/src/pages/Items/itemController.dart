import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'package:getshop/tools.dart';
import 'package:video_player/video_player.dart';

class ItemController extends GetxController {
  VideoPlayerController _videoPlayerController;

  ChewieController _chewieController;

  RxBool isReady = false.obs;

  get videoPlayerController => _videoPlayerController;
  get chewieController => _chewieController;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _videoPlayerController = VideoPlayerController.network(
        "https://video-qn.ibaotu.com/19/67/16/29i888piCPJR.mp4")
      ..initialize().then((_) {
        if (_videoPlayerController.value.isInitialized) {
          print(isReady.value);
          isReady.value = true;
          _chewieController = ChewieController(
              videoPlayerController: _videoPlayerController,
              aspectRatio: _videoPlayerController.value.aspectRatio,
              allowedScreenSleep: false,
              allowPlaybackSpeedChanging: false,
              cupertinoProgressColors: ChewieProgressColors(
                  backgroundColor: Color(0x88000000),
                  playedColor: Color(0xff999999),
                  handleColor: Color(0xff0099ff)),
              materialProgressColors: ChewieProgressColors(
                  backgroundColor: Color(0x88000000),
                  playedColor: Color(0xff999999),
                  handleColor: Color(0xff0099ff)),
              autoPlay: !true,
              looping: !true,
              placeholder: new Container(
                color: Colors.black,
              ),
              // 拖动条样式颜色
              autoInitialize: !true);
        }
      });
    super.onReady();
  }

  @override
  void onClose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.onClose();
  }
}
