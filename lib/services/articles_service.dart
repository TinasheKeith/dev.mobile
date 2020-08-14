import 'package:dev_mobile/models/article.dart';
import 'package:dio/dio.dart';

class ArticlesService {
  static getArticles() async {
    final _baseUrl = "https://dev.to/api";
    final List<Article> articles = [];

    try {
      Response response = await Dio().get(_baseUrl + "/articles");

      response.data.forEach((item) {
        Article formattedArticle = Article.fromJson(item);
        articles.add(formattedArticle);
      });

      print(articles);
    } catch (err) {
      print(err);
    }
  }
}
