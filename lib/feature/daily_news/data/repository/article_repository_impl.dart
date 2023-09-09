import 'package:dio/dio.dart';
import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/feature/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/feature/daily_news/domain/entities/article.dart';
import 'package:news_app/feature/daily_news/domain/respository/article_respository.dart';

import '../../../../core/constants/constants.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiServices;
  ArticleRepositoryImpl(this._newsApiServices);

  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticle() async {
    try {
      final articles = await _newsApiServices.getNewsArticles(
        apiKey: newsAPIKey,
        country: countryQuery,
        category: categoryQuery,
      );
      return DataSuccess(articles);
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
