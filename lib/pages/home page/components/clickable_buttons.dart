import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_viewer/pages/video%20page/video_page.dart';
import 'package:video_viewer/utils/constants.dart';


class ClickableButtons extends StatelessWidget {
  const ClickableButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Video Button
        VideoButton(),

        // Shorts Button
        ShortsButton(),
      ],
    );
  }
}

class ShortsButton extends StatelessWidget {
  const ShortsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        onPressed: (){},
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
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
              SizedBox(
                // Icon Image
                height: height * 0.04,
                width: height * 0.04,
                child: Image.asset(
                  'assets/images/shorts.png',
                  fit: BoxFit.fill,
                ),
              ),

              const SizedBox(height: 16),

              // lable
              Text(
                'Shorts',
                style: Theme.of(context).textTheme.titleLarge,
              ),

              // Number of files
              Text(
                '120 Files',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VideoButton extends StatelessWidget {
  const VideoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        // navigate to song page
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const VideoPage(),));
        },
        padding: EdgeInsets.zero,
        child: Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
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
              SizedBox(
                // Icon Image
                height: height * 0.04,
                width: height * 0.04,
                child: Image.asset(
                  'assets/images/video.png',
                  fit: BoxFit.fill,
                ),
              ),

              const SizedBox(height: 16),

              // lable
              Text(
                'Video',
                style: Theme.of(context).textTheme.titleLarge,
              ),

              // Number of files
              Text(
                '12 Files',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}