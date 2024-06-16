import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_viewer/provider/main_provider.dart';
import 'package:video_viewer/utils/constants.dart';

AppBar homeAppBar({required MainProvider mainProviderFalse, required MainProvider mainProviderTrue}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: false,
    leading: Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 16),
      child: Image.asset("assets/images/video_play.png", fit: BoxFit.fill),
    ),
    title: Text(
      'vPlayer',
      style: GoogleFonts.varelaRound(
        textStyle: TextStyle(
          fontSize: height * 0.035,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    actions: [
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: (){
          if (!mainProviderTrue.isSearchBarVisible){
            mainProviderFalse.isSearchBarVisible =
                !mainProviderTrue.isSearchBarVisible;
          } else {

          }
        },
        child: Image.asset(
          "assets/images/search.png",
          fit: BoxFit.fill,
          height: height * 0.03,
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Image.asset(
        "assets/images/more.png",
        fit: BoxFit.fill,
        height: height * 0.03,
      ),
      const SizedBox(
        width: 20,
      ),
    ],
  );
}
