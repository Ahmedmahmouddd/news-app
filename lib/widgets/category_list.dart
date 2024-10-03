import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_container.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  final List<CategoryContainer> categories = const [
    CategoryContainer(text: 'Entertainment', image: 'assets/entertainment.jpg'),
    CategoryContainer(text: 'politics', image: 'assets/politics.jpg'),
    CategoryContainer(text: 'Cars', image: 'assets/cars.jpg'),
    CategoryContainer(text: 'Business', image: 'assets/business.jpg'),
    CategoryContainer(text: 'Health', image: 'assets/health.jpg'),
    CategoryContainer(text: 'Science', image: 'assets/science.webp'),
    CategoryContainer(text: 'Technology', image: 'assets/technology.jpg'),
    CategoryContainer(text: 'Sports', image: 'assets/sports.jpg'),
    CategoryContainer(text: 'General', image: 'assets/general.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 110,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: ((context, index) {
              return categories[index];
            })),
      ),
    );
  }
}
