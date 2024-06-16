import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_viewer/utils/constants.dart';
import 'package:video_viewer/utils/frequently_used_list.dart';

class FrequentlyUsedList extends StatelessWidget {
  const FrequentlyUsedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
              child: Text(
                'Frequently Used',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ],
        ),

        // list of frequently used
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
                frequentlyUsedList.length,
                (index) => FrequentlyUsedTile(index: index),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FrequentlyUsedTile extends StatelessWidget {
  const FrequentlyUsedTile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(
              CupertinoIcons.folder_fill,
              size: height * 0.05,
              color: frequentlyUsedList[index].color,
            ),
            title: Text(frequentlyUsedList[index].lable),
            trailing: const Icon(Icons.more_horiz_rounded),
          ),
          if (index != frequentlyUsedList.length - 1)
            Divider(
              color: Theme.of(context).scaffoldBackgroundColor,
              indent: width * 0.2,
              thickness: 2,
              height: 10,
            ),
        ],
      ),
      onPressed: () {},
    );
  }
}
