import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/models/gallery_item.dart';

class MyGalleryPage extends StatelessWidget {
  const MyGalleryPage({super.key, required this.pictureItem});

  final List<PictureItem> pictureItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(182, 136, 214, 253),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        title: const Text(
          "Andy´s Gallery",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: pictureItem.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pictureItem[index].imageTitle),
            leading: const Icon(Icons.photo_size_select_actual_rounded),
          );
        },
      ),
    );
  }
}
