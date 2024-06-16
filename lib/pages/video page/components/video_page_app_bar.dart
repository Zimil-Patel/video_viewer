import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';

AppBar songPageAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
    leading: GestureDetector(
      // Go back to home page
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_rounded,)),
    centerTitle: true,
    title: Text(
      'Videos',
      style: GoogleFonts.varelaRound(
        textStyle: TextStyle(
          fontSize: height * 0.026,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Icon(Icons.more_horiz_rounded),
      ),
    ],
  );
}