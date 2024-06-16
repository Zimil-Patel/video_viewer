import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class ProfileAndNotificationIcon extends StatelessWidget {
  const ProfileAndNotificationIcon({
    super.key,
    required this.thumb,
    required this.subTitle,
  });

  final String thumb;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: height * 0.025,
              backgroundColor: Colors.transparent,
              backgroundImage:
              AssetImage('assets/$thumb'),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              subTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '1.1 M',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const Spacer(),
            Icon(
              Icons.notifications_active_outlined,
              size: height * 0.026,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}