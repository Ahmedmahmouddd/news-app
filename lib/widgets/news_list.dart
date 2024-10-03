import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/skiver_error_text.dart';
import 'package:news_app/widgets/sliver_articles_builder.dart';
import 'package:news_app/widgets/sliver_loading_indicator.dart';

class NewsSliverList extends StatefulWidget {
  const NewsSliverList({
    super.key,
    required this.query,
  });
  final String query;
  @override
  State<NewsSliverList> createState() => _NewsSliverListState();
}

class _NewsSliverListState extends State<NewsSliverList> {
  late Future<List<ArticleModel>> future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(query: widget.query);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return SliverArticlesBuilder(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverErrorText();
          } else {
            return const SliverLoadingIndicator();
          }
        }));
  }
}
