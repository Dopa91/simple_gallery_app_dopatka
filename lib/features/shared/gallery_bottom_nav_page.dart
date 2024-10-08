import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/about_me/screens/about_me_page.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/repositories/gallery_data.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/screens/my_gallery_page.dart';

class GalleryBottomNavPage extends StatefulWidget {
  const GalleryBottomNavPage({super.key});

  @override
  State<GalleryBottomNavPage> createState() => _GalleryBottomNavPageState();
}

class _GalleryBottomNavPageState extends State<GalleryBottomNavPage> {
  final List<Widget> widgets = [
    MyGalleryPage(
      dataList: galleryDataList,
    ),
    const AboutMePage(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 64,
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        indicatorColor: const Color.fromARGB(182, 136, 214, 253),
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          currentIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Gallery"),
          NavigationDestination(
              icon: Icon(
                Icons.person_3,
                color: Colors.white,
              ),
              label: "About me"),
        ],
      ),
      body: widgets[currentIndex],
    );
  }
}
