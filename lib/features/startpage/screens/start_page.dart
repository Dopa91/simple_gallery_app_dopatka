import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/startpage/widgets/build_button.dart';
import 'package:simple_gallery_app_dopatka/features/startpage/widgets/image_slider.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Text("Andy´s-Simple-Gallery-App",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.white))),
      backgroundColor: const Color.fromARGB(255, 136, 214, 253),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(child: ImageSlider()),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Herzlich Willkommen",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 42,
              ),
              child: BuildButton(
                newText: "Bildergalerie öffnen",
                nextSite: () =>
                    Navigator.pushNamed(context, "/gallerybottomnav"),
                icon: Icons.arrow_forward,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
