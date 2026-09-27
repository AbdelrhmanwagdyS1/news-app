class NewsModel {
  String? status;
  int? totalResults;
  List<Article>? articles;

  NewsModel({this.status, this.totalResults, this.articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Article>[];
      json['articles'].forEach((v) {
        articles!.add(new Article.fromJson(v));
      });
    }
  }
}

class Article {
  String? author;
  String? title;
  String? description;

  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    this.author,
    this.title,
    this.description,

    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  Article.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];

    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
}
