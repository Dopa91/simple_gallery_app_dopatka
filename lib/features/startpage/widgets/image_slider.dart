import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      disableUserScrolling: true,
      height: 512,
      indicatorRadius: 0,
      isLoop: true,
      autoPlayInterval: 3000,
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
    );
  }
}
