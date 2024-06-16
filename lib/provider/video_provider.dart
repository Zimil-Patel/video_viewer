import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../model/video_model.dart';
import '../utils/video_list.dart';

class VideoProvider extends ChangeNotifier {
  List<VideoModel> _videoList = [];
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;

  ChewieController get chewieController => _chewieController!;

  VideoPlayerController get videoController => _videoController!;

  List<VideoModel> get videoList => _videoList;

  convertData() {
    _videoList = jsonVideoList.map((e) => VideoModel.fromJson(e)).toList();
  }

  VideoProvider() {
    convertData();
  }

  setVideoPlayer(String url) async {
    _videoController = VideoPlayerController.networkUrl(Uri.parse(url));
    await _videoController!.initialize();
    notifyListeners();

    _chewieController = ChewieController(
      videoPlayerController: _videoController!,
      autoPlay: true,
    );
  }

  @override
  void dispose() {
    if (_videoController!.value.isInitialized) {
      _videoController!.dispose();
      _chewieController!.dispose();
    }
    super.dispose();
  }
}
