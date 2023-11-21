import 'dart:convert';
import 'package:news_wamz/models/article_model.dart';
import 'package:http/http.dart' as http;

class News{
  List<ArticleModel> news = [];

  Future<void> getNews() async{

    var url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=2b9a4c13c25e4a88a5cae10b59686734'
    );
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData['articles'].forEach((element){
        if(element["urlToImage"] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            description: element['description'],
          );
          news.add(articleModel);
        }

      });
    }
  }
}
