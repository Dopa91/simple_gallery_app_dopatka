import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/models/gallery_item.dart';

class DetailSite extends StatelessWidget {
  const DetailSite({super.key, required this.item});

  final PictureItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 136, 214, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        title: const Text(
          "Gallery Details",
          style: TextStyle(
              fontWeight: FontWeight.w300, color: Colors.white, fontSize: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.imagePath),
              const SizedBox(
                height: 32,
              ),
              Text(
                item.imageTitle,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                item.imageDate,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(item.imageDescription),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
