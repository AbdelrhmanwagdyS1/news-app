import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/core/result_api.dart';
import 'package:news_app/data/news_model.dart';

class ApiManager {
  static Future<ResultApi<NewsModel>> getArticles() async {
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      "q": "bitcoin",
      "apiKey": "00a3d45b3da74adc8bb80755afb3019f",
    });
    final response = await http.get(url);

    if (response.statusCode >= 200 && response.statusCode <= 300) {
      final json = jsonDecode(response.body);
      return Success(NewsModel.fromJson(json));
    }
    return Error('Request failed with status code ${response.statusCode}');
  }
}
