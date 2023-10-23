import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
   DetailScreen({super.key, required candi});
var candi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // buat detail header
          Stack(
            children: [
              Image.asset('images/borobudur.jpeg'),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
               ),
              ),
            ],
          ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100]?.withOpacity(0.8),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            ),
          // buat detail info
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(candi.name),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                  ],
                  )
                  ]
                ),
            ),

          // info atas
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(candi.name),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                  ],
                ),
              ],
            ),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 16,),
              // info atas (nama candi dan tombol favorit)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    candi.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),
                  )
                ],
              ),
              // info tengah(lokasi, dibangun, tipe)
              SizedBox(height: 16,),
              Row(children: [
                Icon(Icons.place, color: Colors.red,),
                SizedBox(width: 8,),
                SizedBox(width: 70,
                child: Text('Lokasi', style: TextStyle(
                  fontWeight: FontWeight.bold),),),
                Text(': ${candi.location}',),
              ],),
              Row(children: [
                Icon(Icons.calendar_month, color: Colors.blue,),
                SizedBox(width: 8,),
                SizedBox(width: 70,
                  child: Text('Dibangun', style: TextStyle(
                      fontWeight: FontWeight.bold),),),
                Text(': ${candi.built}',),
              ],),
              Row(children: [
                Icon(Icons.house, color: Colors.green,),
                SizedBox(width: 8,),
                SizedBox(width: 70,
                  child: Text('Tipe', style: TextStyle(
                      fontWeight: FontWeight.bold),),),
                Text(': ${candi.type}',),
              ],),
            ],
          ),
          ),
          // info tengah
          // info bawah
          // buat detail galeri
        ],
      ),
    );
  }
}