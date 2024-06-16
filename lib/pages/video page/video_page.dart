import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_viewer/provider/video_provider.dart';

import 'components/video_list_tile.dart';
import 'components/video_page_app_bar.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    VideoProvider videoProviderTrue = Provider.of<VideoProvider>(context, listen: true);
    VideoProvider videoProviderFalse = Provider.of<VideoProvider>(context, listen: false);

    return Scaffold(
      // app bar
      appBar: songPageAppBar(context),

      // body
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                margin: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      videoProviderTrue.videoList.length,
                      (index) => VideoListTile(videoProviderTrue: videoProviderTrue, index: index,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


