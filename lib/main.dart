import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/shared/gallery_bottom_nav_page.dart';
import 'package:simple_gallery_app_dopatka/features/startpage/screens/start_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
      routes: {
        '/gallerybottomnav': (context) => const GalleryBottomNavPage(),
      },
    );
  }
}
