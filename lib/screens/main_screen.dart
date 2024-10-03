import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/custom_appbar.dart';
import 'package:news_app/widgets/news_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [CategoryList(), NewsSliverList(query: 'everything')]),
    );
  }
}
