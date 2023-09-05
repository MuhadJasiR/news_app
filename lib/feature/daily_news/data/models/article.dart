import 'package:news_app/feature/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    int? id,
    String? title,
    String? author,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
        author: map["author"] ?? "",
        title: map["title"] ?? "",
        description: map["title"] ?? "",
        url: map["url"] ?? "",
        urlToImage: map["urlToImage"] ?? "",
        publishedAt: map["publishedAt"] ?? "",
        content: map["content"] ?? "");
  }
}
