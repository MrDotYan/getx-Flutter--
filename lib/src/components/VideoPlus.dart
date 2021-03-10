import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  VideoWidget({Key key, @required this.url, @required this.title})
      : super(key: key);
  final String url;
  final String title;
  VideoWidgetBase createState() => VideoWidgetBase();
}

class VideoWidgetBase extends State<VideoWidget> {
  VideoPlayerController _videoPlayerController;

  ChewieController _chewieController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.url != null
        ? widget.url
        : 'https://pic.ibaotu.com/19/51/42/45F888piCQce.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _chewieController = ChewieController(
              videoPlayerController: _videoPlayerController,
              aspectRatio: _videoPlayerController.value.aspectRatio,
              autoPlay: !true,
              looping: !true,
              placeholder: new Container(
                color: Colors.black,
              ),
              // 拖动条样式颜色
              autoInitialize: !true);
        });
      });
    super.initState();
  }

  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  Widget build(context) {
    return _chewieController != null
        ? Chewie(
            controller: _chewieController,
          )
        : Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.black,
            child: Center(
              child: Text(
                '加载中...',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
  }
}
