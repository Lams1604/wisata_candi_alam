import 'package:flutter/Material.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor

  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO: 2. Tetapkan parameter shape, margin, dan elevation dari cari
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
          margin: EdgeInsets.all(4),
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: 3. Buat Image sebagai anak dari column
              ClipRRect(
                child: Image.asset(candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          // TODO: 4. Buat text sebagai anak dari column
          // TODO: 5. Buat text sebagai anak dari column

    );
  }
}
