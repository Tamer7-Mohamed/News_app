// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../widgets/Ctogrise_list_view.dart';
import '../widgets/news_list_view_bulider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.yellow, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CatogriesListView(),
            ),
            NewsListViewBulider(category: 'general')
          ],
        ));
  }
}
