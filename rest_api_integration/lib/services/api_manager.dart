import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api_integration/constants/strings.dart';
import 'package:rest_api_integration/models/news_info.dart';

class APIManager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(Strings.news_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}