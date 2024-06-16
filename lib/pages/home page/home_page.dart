
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_viewer/provider/main_provider.dart';


import 'components/animated_search_bar.dart';
import 'components/clickable_buttons.dart';
import 'components/frequently_used.dart';
import 'components/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MainProvider mainProviderTrue = Provider.of(context, listen: true);
    MainProvider mainProviderFalse = Provider.of(context, listen: false);

    return Scaffold(
      // app bar
      appBar: homeAppBar(
          mainProviderFalse: mainProviderFalse,
          mainProviderTrue: mainProviderTrue),

      // body
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // search box
            AnimatedSearchBar(),

            // Video, shorts button
            ClickableButtons(),

            // Frequently used
            FrequentlyUsedList(),
          ],
        ),
      ),
    );
  }
}

