import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class TestController extends GetxController {
  VideoPlayerController _controller;
  RxBool isReady = false.obs;
  RxBool isEnd = false.obs;
  RxBool isPlay = false.obs;

  RxString duration = "00:00:00".obs;
  RxString position = "00:00:00".obs;

  get videoController => _controller;

  @override
  void onInit() {
    super.onInit();
  }

  void fullScreen() {}

  void play() {
    if (isPlay.value) {
      _controller.pause();
      isPlay.value = false;
    } else {
      _controller.play();
      isPlay.value = true;
    }
  }

  void reSatrt() {
    _controller.seekTo(Duration(minutes: 0));
    addEventListener();
  }

  void addEventListener() {
    _controller.addListener(() {
      duration.value = _controller.value.duration.toString();
      position.value = _controller.value.position.toString();
    });
  }

  @override
  void onReady() {
    _controller = VideoPlayerController.network(
        'https://video-qn.ibaotu.com/19/67/16/29i888piCPJR.mp4')
      ..initialize().then((_) {
        print(_controller.value.isInitialized);

        if (_controller.value.isInitialized) {
          isReady.value = true;
          addEventListener();
          super.onReady();
        }
      });
  }
}
