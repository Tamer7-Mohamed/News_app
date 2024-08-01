// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/Artical_Model.dart';

import '../service/News_Service.dart';
import 'ListViewTile.dart';

class NewsListViewBulider extends StatefulWidget {
  const NewsListViewBulider({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
  var future;
  @override
  void initState() {
    future = NewsService(Dio()).getnews(category: widget.category);
    super.initState();
  }

  /*  bool isLoading = true;

  Future<void> getGenralNews() async {
    articles = await NewsService(Dio()).getnews();
    isLoading = false;
    setState(() {});
  } */
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return ListViewTile(articles: Snapshot.data!);
        } else if (Snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('Oops there was an error , Try Later'),
          );
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
      future: future,
    );
    /* isLoading
        ? const SliverToBoxAdapter(child: CircularProgressIndicator())
        : ListViewTile(
            articles: articles,
          ); */
  }
}
