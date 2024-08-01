// ignore_for_file: file_names

/* // ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/Artical_Model.dart';
import 'package:news_app/service/News_Service.dart';
import 'package:news_app/widgets/NewTile.dart';

class ListViewTile extends StatefulWidget {
  const ListViewTile({
    super.key,
  });

  @override
  State<ListViewTile> createState() => _ListViewTileState();
}

class _ListViewTileState extends State<ListViewTile> {
  List<ArticalModel> articles = [];
  @override
  void initState() {
    getGenralNews();
    super.initState();
  }

  bool isLoading = true;

  Future<void> getGenralNews() async {
    articles = await NewsService(Dio()).getnews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(child: CircularProgressIndicator())
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 25),
              child: NewsTile(
                articalModel: articles[index],
              ),
            );
          }));
  }
} */

import 'package:flutter/material.dart';

import '../models/Artical_Model.dart';
import 'NewTile.dart';

class ListViewTile extends StatelessWidget {
  const ListViewTile({Key? key, required this.articles}) : super(key: key);
  final List<ArticalModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 25),
        child: NewsTile(
          articalModel: articles[index],
        ),
      );
    }));
  }
}
