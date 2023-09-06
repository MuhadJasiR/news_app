import 'package:dio/dio.dart';
import 'package:news_app/core/constants/constants.dart';
import 'package:news_app/feature/daily_news/data/models/article.dart';
import 'package:retrofit/http.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiBaseUrl)
abstract class NewsApiServices {
  factory NewsApiServices(Dio dio) = _NewsApiServices;

  @GET("/top-headlines")
  Future<List<ArticleModel>> getNewsArticles({
    @Query("apikey") String? apikey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
