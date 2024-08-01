// ignore_for_file: file_names, unused_local_variable, non_constant_identifier_names, avoid_print, unused_catch_clause

import 'package:dio/dio.dart';
import 'package:news_app/models/Artical_Model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticalModel>> getnews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=155c9eed539b481aaab9a084915d4b53&category=$category');
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData['articles'];
      List<ArticalModel> articlesList = [];
      for (var articles in articles) {
        ArticalModel articleModel = ArticalModel.fromJson(articles);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
