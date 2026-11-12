class ArtticleModel {

  final String judul;
  final String? deskripsi;
  final String? urlToimage;
  

  ArtticleModel({
    required this.judul, 
    this.deskripsi, 
    this.urlToimage


  });

  factory ArtticleModel.fromJson(Map<String, dynamic> json){
    return ArtticleModel(
      judul: json['title'] ?? "Tanpa Judul",
      deskripsi: json['description'],
      urlToimage: json['urlToImage']
     );
  }

}