import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // buat detail header
          Stack(
            children: [
              Image.asset('images/borobudur.jpeg'),
            ],
          ),
          // buat detail info
          // buat detail galeri
        ],
      ),
    );
  }
}