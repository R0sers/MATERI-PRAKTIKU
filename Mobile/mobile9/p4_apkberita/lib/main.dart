import 'package:flutter/material.dart';
import 'package:p4_apkberita/api_service.dart';
import 'package:p4_apkberita/artticle_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Berita',
      debugShowCheckedModeBanner: false,
      home: NewsScreen(),
    );
  }
}

class NewsScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  late Future<List<ArtticleModel>> articles;

  @override
  void initState(){
    super.initState();
    articles = ApiService().fecthArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Baru Terkini'),
        leading: Icon(Icons.newspaper_sharp),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: articles,
        builder: (context, snapshot) {
          // kondisi loading
          if (snapshot.connectionState == .waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // terjadi kesalahan pas pengambilan data
          else if (snapshot.hasError) {
            return Center(
              child: Text('Error : ${snapshot.error}'),
            );
          }

          final data = snapshot.data ?? [];
         
          // jika tidak ada berita
          if (data.isEmpty){
            return const Center(
              child: Text('Tidak ada Berita'),
            );
          }

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final article = data[index];

              return Card(
                margin: const EdgeInsets.all(15),
                child: ListTile(
                  leading: article.urlToimage != null
                  ? Image.network(
                    article.urlToimage!,
                    width: 80,
                    fit: .cover,
                    errorBuilder: (_, __, ___) =>
                    const Icon(Icons.broken_image),
                  ) : const Icon(Icons.newspaper),
                  title: Text(article.judul),
                  subtitle: Text(
                    article.deskripsi ?? 'Tidak ada deskripsi'
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}