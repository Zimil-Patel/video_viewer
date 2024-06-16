import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_viewer/utils/constants.dart';

import '../../../provider/main_provider.dart';

class AnimatedSearchBar extends StatelessWidget {
  const AnimatedSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MainProvider mainProviderTrue = Provider.of<MainProvider>(context, listen: true);
    MainProvider mainProviderFalse = Provider.of<MainProvider>(context, listen: false);

    return Visibility(
      visible: mainProviderTrue.isSearchBarVisible,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: height * 0.05,
            child: Row(
              children: [
                const Expanded(child: SizedBox()),
                const SearchBox(),
                const Expanded(child: SizedBox()),
                CloseButton(mainProviderFalse: mainProviderFalse),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    super.key,
    required this.mainProviderFalse,
  });

  final MainProvider mainProviderFalse;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          mainProviderFalse.isSearchBarVisible = false;
        },
        child: Icon(
          Icons.close_rounded,
          size: height * 0.035,
          color: Colors.white,
        ));
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: width / 3, end: width / 1.2),
      duration: const Duration(milliseconds: 300),
      builder: (context, value, child) => SizedBox(
        width: value,
        child: TextField(
          maxLines: 1,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            hintText: 'Enter url here',
            contentPadding: const EdgeInsets.symmetric(
                vertical: 2, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
