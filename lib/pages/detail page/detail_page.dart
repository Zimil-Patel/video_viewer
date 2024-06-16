import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_viewer/provider/video_provider.dart';
import 'package:video_viewer/utils/constants.dart';
import '../video page/components/top_bar.dart';
import '../video page/components/video_details.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: double.infinity,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopBar(),
                  // video
                  Expanded(
                    flex: 3,
                    child: videoProviderTrue.videoController.value.isInitialized
                        ? Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            child: AspectRatio(
                              aspectRatio: videoProviderTrue
                                  .videoController.value.aspectRatio,
                              child: Chewie(
                                controller: videoProviderTrue.chewieController,
                              ),
                            ),
                          )
                        : Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: const CircularProgressIndicator()),
                  ),

                  // about video
                  VideoDetails(
                      title: title, subTitle: subTitle, thumb: thumb, des: des),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
