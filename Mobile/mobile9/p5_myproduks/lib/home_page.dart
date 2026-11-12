import 'package:flutter/material.dart';
import 'package:p5_myproduks/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> products = const [
    {
      'nama' : 'Minyak Goreng',
      'harga' : 'Rp 32.000',
      'deskripsi' : 'Minyak Goreng Terbaik, moal jadi minyak jalantah',
      'gambar' : 'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'
    },
    {
      'nama' : 'Terigu',
      'harga' : 'Rp 16.000',
      'deskripsi' : 'Terigu cap kuda, bagus buat bikin cakue',
      'gambar' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9InQN1B-8IJLzTQQdwFbs2ay8PqbH0RbflhS4l4Ekxg&s=10'
    },
    {
      'nama' : 'Gula Pasir',
      'harga' : 'Rp 20.000',
      'deskripsi' : 'Gula pasir cap meong, manis sekali',
      'gambar' : 'https://images.unsplash.com/photo-1769259397222-33e425659c43?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.store_outlined),
        title: Text('Produk Azhar'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return Card(
            color: Colors.white,
            margin: const EdgeInsetsDirectional.only(bottom: 15),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: .circular(10),
                child: Image.network(
                  p['gambar']!,
                  width: 80,
                  height: 70,
                  fit: .cover,
                ),
                ),
                title: Text(
                  p['nama']!,
                  style: TextStyle(
                    fontWeight: .bold
                  ),
                ),
                subtitle: Text(
                  p['harga']!,
                   style: TextStyle(
                  fontWeight: .bold,
                  color: Colors.green
                ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:(context) => DetailPage(
                        nama: p['nama']!, 
                        harga: p['harga']!, 
                        deskripsi: p['deskripsi']!, 
                        gambar: p['gambar']!
                        ), 
                    )
                  );
                },
            ),
          );
        }, 
        ),

    );
  }
}