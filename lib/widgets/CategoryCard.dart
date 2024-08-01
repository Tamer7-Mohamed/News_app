// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app/models/CaegoryModel.dart';
import 'package:news_app/views/Category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return CategoryView(
              category: category.categoryName,
            );
          },
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.imageAssetUrl)),
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
