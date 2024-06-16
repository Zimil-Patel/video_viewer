import 'package:flutter/material.dart';
import 'package:video_viewer/pages/video%20page/components/profile_and_notification.dart';
import 'package:video_viewer/pages/video%20page/components/title_subtitle.dart';
import 'package:video_viewer/pages/video%20page/components/utils_actions_buttons.dart';

import 'description.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({
    super.key,
    required this.title,
    required this.subTitle,
    required this.thumb,
    required this.des,
  });

  final String title;
  final String subTitle;
  final String thumb;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        alignment: Alignment.centerLeft,
        margin:
        const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.8),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title subtitle
              TitleAndSubTitle(title: title, subTitle: subTitle),

              // profile and channel name
              ProfileAndNotificationIcon(thumb: thumb, subTitle: subTitle),

              // share, download, save, etc...
              const UtilsActions(),

              // description
              Description(des: des),
            ],
          ),
        ),
      ),
    );
  }
}