import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _videoController;
  late ChewieController? _chewieController;
  bool _isInitialized = false;

  @override
  initState() {
    super.initState();
    _videoController =
        .networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((_) {
            if (mounted) {
              setState(() {
                _chewieController = ChewieController(
                  videoPlayerController: _videoController,
                  autoPlay: true,
                  looping: true,
                  allowFullScreen: true,
                  aspectRatio: _videoController.value.aspectRatio,
                  materialProgressColors: ChewieProgressColors(
                    playedColor: ksecondaryColor,
                    handleColor: kprimaryColor,
                    bufferedColor: Colors.white30,
                    backgroundColor: Colors.grey,
                  ),
                );
                _isInitialized = true;
              });
            }
          });
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized || _chewieController == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return SizedBox(
      height: 300.h,
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: _videoController.value.aspectRatio,
        child: Chewie(controller: _chewieController!),
      ),
    );
  }
}
