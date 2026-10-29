import 'package:flutter/material.dart';
import 'package:p5/DetailPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> produtcs = [
      {
        'nama' : 'Iphone 13 Bamsic',
        'harga': 'Rp. 9.000.000',
        'deskripsi' : 'Iphone Gacor Buat Maen Balorant',
        'gambar' : 'https://images.unsplash.com/photo-1636777489428-8a3da9f821c7?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'
      },
      {
        'nama' : 'Iphone 14 ProMag',
        'harga': 'Rp. 9.000.000',
        'deskripsi' : 'Bisa Immo Dengan Iphone 14 ProMag',
        'gambar' : 'https://images.unsplash.com/photo-1608547492806-7e6c70ffdea4?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D'
      },
      {
        'nama' : 'Iphone 100 Promax Max Max',
        'harga': 'Rp. 9.000.000',
        'deskripsi' : 'Iphone Gacor Buat Maen Balorant',
        'gambar' : 'https://cdn.memes.com/up/51551361663121855/i/1664072028933.jpg'
      }

    ];



    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.store_mall_directory),
        title: Text('Produk Terbamru'),
        backgroundColor: const Color.fromARGB(255, 1, 20, 48),
        foregroundColor: Colors.white,
      ),

      body: SafeArea( 
        child: ListView.builder(
          itemCount: produtcs.length,
          itemBuilder: (context, index) {
            final product = produtcs[index];
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    product['gambar']!,
                    width: 60,
                    height: 65,
                    fit: BoxFit.cover,

                    errorBuilder: (context, error, stackTrace) {
                      return SizedBox(
                          child: Icon(Icons.error),
                      );
                    }
                  ),
                ),
                title: Text(
                product['nama']!,
                style: TextStyle(
                  fontWeight: .bold,
                  color: const Color.fromARGB(255, 2, 14, 122)
                ),
              ),
              subtitle: Text(
                product['deskripsi']!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: const Color.fromARGB(255, 28, 40, 155)
                )
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Detailpage(
                      Nama: product['nama']!, 
                      Harga: product['harga']!, 
                      Deskripsi: product['deskripsi']!, 
                      Gambar: product['gambar']!
                    ),
                  ),
                );
              },
              ),
            );
          },
        ),
      ),
    );
  }
}