import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/data/news_model.dart';

class ApiManager {
  static Future<NewsModel> getNews() async {
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      "q": "bitcoin",
      "apiKey": "00a3d45b3da74adc8bb80755afb3019f",
    });
    var response = await http.get(url);
    var responseString = response.body;
    var json = jsonDecode(responseString);
    return NewsModel.fromJson(json);
  }
}
