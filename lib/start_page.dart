import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:simple_gallery_app_dopatka/build_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Text("Andy´s Simple-Gallery-App",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.white))),
      backgroundColor: const Color.fromARGB(255, 112, 146, 171),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
                child: ImageSlideshow(
              disableUserScrolling: true,
              height: 512,
              indicatorRadius: 0,
              isLoop: true,
              autoPlayInterval: 4200,
              children: [
                Image.asset(
                  "assets/images/basketball_1.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/basketball_2.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/bike.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/running.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/ski.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/soccer.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/tennis_1.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/tennis_2.jpeg",
                  fit: BoxFit.cover,
                ),
              ],
            )),
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
