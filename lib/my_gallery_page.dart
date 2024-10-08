import 'package:flutter/material.dart';

class MyGalleryPage extends StatelessWidget {
  const MyGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(182, 136, 214, 253),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 112, 146, 171),
        title: const Text(
          "Andy´s Gallery",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [Text("Hallo")],
          ),
        ),
      ),
    );
  }
}
