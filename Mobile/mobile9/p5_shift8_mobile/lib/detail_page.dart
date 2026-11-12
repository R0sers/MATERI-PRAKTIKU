import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama, harga, img;

  const DetailPage({
    super.key,
    required this.nama,
    required this.harga,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(img),
            Text(nama),
            Text(harga)
            
          ],
        ),
      ),
    );
  }
}