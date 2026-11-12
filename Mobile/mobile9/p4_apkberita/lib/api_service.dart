import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:p4_apkberita/artticle_model.dart';

class ApiService {

  static const url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a0fa2a6c6bf34652a0d5557bb954ceda';

  Future<List<ArtticleModel>> fecthArticles() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Gagal memuat berita');
    }

    final data = jsonDecode(response.body);

    return (data['articles'] as List)
    .map((item) => ArtticleModel.fromJson(item)).toList();
    
  }

}
