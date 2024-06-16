import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:video_viewer/provider/main_provider.dart';
import 'package:video_viewer/pages/intro%20page/intro_page.dart';
import 'package:video_viewer/provider/video_provider.dart';

void main() {
  runApp(const VideoViewerApp());
}

class VideoViewerApp extends StatelessWidget {
  const VideoViewerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider(),),
        ChangeNotifierProvider(create: (context) => VideoProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Video Viewer',
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff121721),
          colorScheme: const ColorScheme.dark(
            brightness: Brightness.dark,
            surface: Color(0xff1f2030),
            onSecondary: Color(0xff2e2f44),
          ),
          textTheme: TextTheme(
            titleLarge: GoogleFonts.varelaRound(),
            titleMedium: GoogleFonts.varelaRound(),
            titleSmall: GoogleFonts.varelaRound(),
            bodyLarge: GoogleFonts.varelaRound(),
            bodyMedium: GoogleFonts.varelaRound(),
            bodySmall: GoogleFonts.varelaRound(),
          ),
        ),
        themeMode: ThemeMode.dark,
        home: const IntroPage(),
      ),
    );
  }
}
