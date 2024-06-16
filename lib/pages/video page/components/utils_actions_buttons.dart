import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_viewer/utils/constants.dart';


class UtilsActions extends StatelessWidget {
  const UtilsActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // like, dislike
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined, size: height * 0.02,),
                  const SizedBox(width: 5,),
                  const Text('7.5K  |  '),
                  const SizedBox(width: 5,),
                  Icon(Icons.thumb_down_alt_outlined, size: height * 0.02,),
                ],
              ),
            ),

            const SizedBox(width: 10,),
            // share
            const IconWithLable(icon: CupertinoIcons.share, lable: 'Share',),
            const IconWithLable(icon: Icons.multitrack_audio, lable: 'Remix',),
            const IconWithLable(icon: Icons.save_alt_rounded, lable: 'Download',),
            const IconWithLable(icon: Icons.cut, lable: 'Clip',),
            const IconWithLable(icon: Icons.bookmark_add_outlined, lable: 'Save',),
            const IconWithLable(icon: Icons.report_gmailerrorred_rounded, lable: 'Report',),
          ],
        ),
      ),
    );
  }
}

class IconWithLable extends StatelessWidget {
  const IconWithLable({
    super.key, required this.icon, required this.lable,
  });

  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, size: height * 0.02,),
          const SizedBox(width: 8,),
          Text(lable),
        ],
      ),
    );
  }
}
