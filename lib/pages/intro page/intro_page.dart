import 'package:flutter/material.dart';
import 'package:video_viewer/pages/home%20page/home_page.dart';
import 'package:video_viewer/utils/constants.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    // Navigate to home page after few seconds
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
    },);

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/intro.jpeg'),
          ),
        ),
      ),
    );
  }
}
