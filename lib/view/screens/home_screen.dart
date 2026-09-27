import 'package:flutter/material.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/widgets/item_card_news.dart';
import 'package:news_app/data/api_manager.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Article> articles = [];
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News App"), centerTitle: true),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemCardNews(article: articles[index]),
        itemCount: articles.length,
      ),
    );
  }

  void getArticles() async {
    var news = await ApiManager.getNews();
    articles = news.articles ?? [];
    setState(() {});
  }
}
