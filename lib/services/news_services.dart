import 'package:dio/dio.dart';
import 'package:news_cloud_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?apiKey=11a4255a523c4b1a91ba268cac3cf16e&country=us&category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
