import 'package:flutter/material.dart';
import '../widgets/news_list_view_bulider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: CustomScrollView(
          slivers: [
            NewsListViewBulider(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
