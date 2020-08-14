import 'package:dio/dio.dart';

class ArticlesService {
  static getArticles() async {
    final _baseUrl = "https://dev.to/api";

    try {
      Response response = await Dio().get(_baseUrl + "/articles");
      print(response.data);
    } catch (err) {
      print(err);
    }
  }
}
