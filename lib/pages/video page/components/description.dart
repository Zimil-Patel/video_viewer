
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';


class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.des,
  });

  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 10,
          ),
          Text(des, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),),
        ],
      ),
    );
  }
}