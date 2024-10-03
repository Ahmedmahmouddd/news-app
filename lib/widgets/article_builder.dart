import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class ArticlesBuilder extends StatelessWidget {
  const ArticlesBuilder({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      },
    );
  }
}
