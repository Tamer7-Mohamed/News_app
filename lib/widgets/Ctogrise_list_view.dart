// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app/models/CaegoryModel.dart';
import 'package:news_app/widgets/CategoryCard.dart';

class CatogriesListView extends StatelessWidget {
  const CatogriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      imageAssetUrl: 'assets/entertaiment.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      imageAssetUrl: 'assets/technology.jpeg',
      categoryName: 'Sports',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
