 import 'package:flutter/Material.dart';
import 'package:flutter_alam/data/candi_data.dart';
import '../models/candi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. Buat appbar dengan judul wisata candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      // TODO: 2. Buat body dengan GridView.builder
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          padding: EdgeInsets.all(8.0),
          itemCount: candiList.length,
          itemBuilder: (contex,index){
            Candi candi = candiList[index];
            return ItemCard(candi: candi);
          },),
      // TODO: 3. Buat ItemCard sebagai return value dari GridView.builder
    );
  }
}
