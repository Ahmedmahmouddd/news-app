class ArticleModel {
  final String title;
  final String? image;
  final String? subtitle;

  ArticleModel({
    required this.image,
    required this.subtitle,
    required this.title,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        subtitle: json['description'],
        title: json['title']);
  }
}
