import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/models/gallery_item.dart';

class DetailSite extends StatelessWidget {
  final PictureItem item;

  const DetailSite({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(182, 136, 214, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        title: const Text("Gallery Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(item.imagePath),
            Text(
              item.imageTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              item.imageDate,
              style: const TextStyle(fontSize: 16),
            ),
            Text(item.imageDescription)
          ],
        ),
      ),
    );
  }
}
