import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NetflixVideoPlayer extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool? loop;
  const NetflixVideoPlayer({
    required this.videoPlayerController,
    this.loop,
  });

  @override
  _NetflixVideoPlayerState createState() => _NetflixVideoPlayerState();
}

class _NetflixVideoPlayerState extends State<NetflixVideoPlayer> {
  ChewieController? _chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        // looping: widget.loop,
        aspectRatio: 16 / 9,
        looping: false,
        fullScreenByDefault: false,
        showOptions: true,
        autoPlay: false,
        autoInitialize: true,
        showControlsOnInitialize: false,
        // ignore: prefer_const_constructors
        placeholder: Center(
            // ignore: prefer_const_constructors
            child: SizedBox(
                height: 60,
                width: 60,
                // ignore: prefer_const_constructors
                child: CircularProgressIndicator(
                  color: Colors.red,
                ))),
        materialProgressColors: ChewieProgressColors(
          bufferedColor: Colors.red,
          handleColor: Colors.red,
        ));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Chewie(
        controller: _chewieController!,
      ),
    );
  }
}
