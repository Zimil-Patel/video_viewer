
import 'package:flutter/material.dart';

import '../model/video_model.dart';
import '../utils/video_list.dart';

class VideoProvider extends ChangeNotifier{

  List<VideoModel> _videoList = [];

  List<VideoModel> get videoList => _videoList;

  convertData(){
    _videoList = jsonVideoList.map((e) => VideoModel.fromJson(e)).toList();
  }

  VideoProvider(){
    convertData();
  }

}