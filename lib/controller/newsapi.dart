import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/articles.dart';

class NewsApi {
  static String Apiakey = '996cc49225f04fa3b3cf39e36b2d7fb6';

  static fechNewssearsh(String key) async {
    List<ArticlesModel> listRecievArtticle = [];
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$Apiakey');
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["articles"];
    for (var x in responsebody) {
      if (key == null) {
        listRecievArtticle.add(ArticlesModel(
            title: " ${x["title"]}",
            description: " ${x["description"]}",
            url: "${x["url"]}",
            urlToImage: "${x["urlToImage"]}"));
      } else {
        listRecievArtticle.add(ArticlesModel(
            title: " ${x["title"]}",
            description: " ${x["description"]}",
            url: "${x["url"]}",
            urlToImage: "${x["urlToImage"]}"));
        listRecievArtticle = listRecievArtticle
            .where((element) =>
                element.title.toLowerCase().contains(key.toLowerCase()))
            .toList();
      }
    }
    return listRecievArtticle;
  }

  static fechNewscategory(String category) async {
    List<ArticlesModel> listRecievArtticle = [];
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$Apiakey');
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["articles"];
    for (var x in responsebody) {
      listRecievArtticle.add(ArticlesModel(
          title: " ${x["title"]}",
          description: " ${x["description"]}",
          url: "${x["url"]}",
          urlToImage: "${x["urlToImage"]}"));
    }
    return listRecievArtticle;
  }

  static fechNews(String key) async {
    List<ArticlesModel> listRecievArtticle = [];
    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$Apiakey');
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["articles"];
    for (var x in responsebody) {
      listRecievArtticle.add(ArticlesModel(
          title: " ${x["title"]}",
          description: " ${x["description"]}",
          url: "${x["url"]}",
          urlToImage: "${x["urlToImage"]}"));
    }
    return listRecievArtticle;
  }
}
