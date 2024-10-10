import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/startpage/widgets/build_button.dart';
import 'package:simple_gallery_app_dopatka/features/shared/image_slider.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          "Simple-Gallery-App",
          style: TextStyle(
              fontWeight: FontWeight.w300, color: Colors.white, fontSize: 32),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 112, 146, 170),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
              child: ImageSlider(
                imageHeight: 512,
                indiRadius: 0,
                scrollStop: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Herzlich Willkommen",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 32),
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
                color: const Color.fromARGB(255, 136, 214, 253),
                textColor: const Color.fromARGB(255, 248, 252, 255),
                textSize: 18,
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


// Color from background firstTry: Color.fromARGB(255, 136, 214, 253),
// Color from button firstTry: Color.fromARGB(255, 112, 146, 170),