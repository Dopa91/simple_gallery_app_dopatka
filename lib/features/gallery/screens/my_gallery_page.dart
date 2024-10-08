import 'package:flutter/material.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/models/gallery_item.dart';
import 'package:simple_gallery_app_dopatka/features/gallery/screens/detail_site.dart';
import 'package:simple_gallery_app_dopatka/features/startpage/widgets/image_slider.dart';

class MyGalleryPage extends StatelessWidget {
  const MyGalleryPage({super.key, required this.dataList});

  final List<PictureItem> dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 136, 214, 253),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 112, 146, 170),
        title: const Text(
          "Andy´s Gallery",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const ImageSlider(
            imageHeight: 256,
            indiRadius: 3,
            scrollStop: false,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dataList[index].imageTitle),
                  subtitle: Text(dataList[index].imageDate),
                  leading: Image.asset(
                    dataList[index].imagePath,
                    width: 128,
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailSite(
                              item: dataList[index],
                            ),
                          ),
                        );
                      },
                      child: const Icon(Icons.slideshow)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
