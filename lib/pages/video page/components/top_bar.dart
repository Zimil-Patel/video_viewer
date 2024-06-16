import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:video_viewer/provider/video_provider.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            // Go back to home page
            onTap: () {
              Provider.of<VideoProvider>(context, listen: false).chewieController.pause();
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_rounded,
            ),
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(Icons.more_horiz_rounded),
        ),
      ],
    );
  }
}