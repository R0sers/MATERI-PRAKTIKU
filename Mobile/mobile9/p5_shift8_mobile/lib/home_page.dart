import 'package:flutter/material.dart';
import 'package:p5_shift8_mobile/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> products = [
      {
        'nama': 'Laptop',
        'harga':'7000',
        'img':'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'
      },

      {
        'nama':'Smarphone',
        'harga':'6000',
        'img':'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'

      },

      {
        'nama':'kulkas',
        'harga':'9000',
        'img':'https://images.unsplash.com/photo-1721613877687-c9099b698faa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'

      },

      {
        'nama':'TV',
        'harga':'8000',
        'img':'https://plus.unsplash.com/premium_photo-1664392122271-a1aedb05a7c6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'

      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Produk Alat ELektronik',
          style: TextStyle(
            fontWeight: .bold,
            fontSize: 30,
            letterSpacing: 1.2
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
        leading: Icon(Icons.shopping_cart, size: 30,),
        
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product['img']),
            title: Text(product['nama']),
            subtitle: (
              Text(product['harga'])
            ),
            trailing: Icon(Icons.arrow_right, size: 40,),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    nama: product['nama'],
                    harga: product ['harga'],
                    img: product ['img']
                  ),
                )
              );
            },
          );
        },
      ),
    );
  }
}