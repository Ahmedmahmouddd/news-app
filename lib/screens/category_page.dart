import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/article_builder.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, required this.query});
  final String query;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late Future<List<ArticleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(query: widget.query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
            future: future,
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return ArticlesBuilder(articles: snapshot.data!);
              } else if (snapshot.hasError) {
                return const Center(
                    child: Text(
                  'Sorry, an error has happened..',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ));
              } else {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.amber,
                  strokeAlign: 1,
                  strokeWidth: 8,
                ));
              }
            })));
  }
}
