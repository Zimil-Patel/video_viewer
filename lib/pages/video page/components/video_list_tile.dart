import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_viewer/pages/detail%20page/detail_page.dart';
import 'package:video_viewer/provider/video_provider.dart';

import '../../../utils/constants.dart';


class VideoListTile extends StatelessWidget {
  const VideoListTile({
    super.key,
    required this.videoProviderTrue, required this.index,
  });

  final int index;
  final VideoProvider videoProviderTrue;

  @override
  Widget build(BuildContext context) {

    String title = videoProviderTrue.videoList[index].title;
    String subTitle = videoProviderTrue.videoList[index].subtitle;
    String des = videoProviderTrue.videoList[index].description;
    String thumb = videoProviderTrue.videoList[index].thumb;
    String url = videoProviderTrue.videoList[index].sources[0];

    return Column(
      children: [
        CupertinoButton(
          // navigate to detail page
          onPressed: () {
            videoProviderTrue.setVideoPlayer(url);
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(index: index),));
          },
          padding: EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Expanded(
                flex: 2,
                child: VideoThumbnail(videoProviderTrue: videoProviderTrue, index: index,),
              ),

              // About video
              Expanded(
                flex: 2,
                child: AboutVideo(
                    videoProviderTrue: videoProviderTrue,
                    index: index),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(
                  Icons.more_vert_rounded,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),

        // divider if its not last video
        if (index != videoProviderTrue.videoList.length - 1)
          Divider(
            color: Theme.of(context).scaffoldBackgroundColor,
            thickness: 2,
            height: 10,
          ),
      ],
    );
  }
}

class VideoThumbnail extends StatelessWidget {
  const VideoThumbnail({
    super.key,
    required this.videoProviderTrue, required this.index,
  });

  final int index;
  final VideoProvider videoProviderTrue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/${videoProviderTrue.videoList[index].thumb}'),
          )
      ),
    );
  }
}

class AboutVideo extends StatelessWidget {
  const AboutVideo({
    super.key,
    required this.videoProviderTrue,
    required this.index,
  });

  final VideoProvider videoProviderTrue;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          videoProviderTrue.videoList[index].title,
          maxLines: 2,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
        Text(
          videoProviderTrue.videoList[index].subtitle,
          softWrap: true,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.grey),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.onSecondary),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.timer,
                    color: Colors.white,
                    size: height * 0.012,
                  ),
                  Text(
                    '  3:50',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.onSecondary),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.play_fill,
                    color: Colors.orange,
                    size: height * 0.012,
                  ),
                  Text(
                    '  MP4',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}