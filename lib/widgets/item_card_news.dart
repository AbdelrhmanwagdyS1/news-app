import 'package:flutter/material.dart';
import 'package:news_app/data/news_model.dart';

class ItemCardNews extends StatelessWidget {


  const ItemCardNews({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return  Container(
     padding: EdgeInsets.all(8.0),
     margin: EdgeInsets.symmetric(horizontal: 16.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            article.urlToImage ?? "",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(article.author ?? "", style: Theme.of(context).textTheme.titleSmall,),
        Text(article.title ?? "", style: Theme.of(context).textTheme.titleMedium,),
       ],
     ),
    );
  }
}