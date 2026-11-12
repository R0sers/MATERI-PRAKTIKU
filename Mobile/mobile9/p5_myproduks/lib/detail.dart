import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String nama, harga, deskripsi, gambar;


  const DetailPage({
    super.key,
    required this.nama,
    required this.harga,
    required this.deskripsi,
    required this.gambar

    });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsetsGeometry.all(15),
            child: Column(
              
            ),
            ),
        ),
    );
  }
}