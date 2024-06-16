import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_viewer/provider/video_provider.dart';
import 'package:video_viewer/utils/constants.dart';

import '../video page/components/top_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    VideoProvider videoProviderTrue =
        Provider.of<VideoProvider>(context, listen: true);
    VideoProvider videoProviderFalse =
        Provider.of<VideoProvider>(context, listen: false);

    String title = videoProviderTrue.videoList[index].title;
    String subTitle = videoProviderTrue.videoList[index].subtitle;
    String des = videoProviderTrue.videoList[index].description;
    String thumb = videoProviderTrue.videoList[index].thumb;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                'assets/${videoProviderTrue.videoList[index].thumb}'),
          ),
        ),
        child: BlurryContainer(
          padding: EdgeInsets.zero,
          height: height,
          width: width,
          blur: 16,
          color: Colors.black.withOpacity(0.6),
          child: SafeArea(
            child: Column(
              children: [
                TopBar(),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$title | $subTitle', maxLines: 2, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Text('483,427 views  1 hr ago', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),),
                            Text(' ...more', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: height * 0.025,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/$thumb'),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
