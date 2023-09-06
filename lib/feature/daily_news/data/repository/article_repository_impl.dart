import 'package:news_app/core/resources/data_state.dart';
import 'package:news_app/feature/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/feature/daily_news/domain/entities/article.dart';
import 'package:news_app/feature/daily_news/domain/respository/article_respository.dart';

import '../../../../core/constants/constants.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiServices _newsApiServices;
  ArticleRepositoryImpl(this._newsApiServices);

  // @override
  // Future<DataState<List<ArticleEntity>>> getNewsArticle() async {
  //   // final httpResponse = await _newsApiServices.getNewsArticles(
  //   //   apikey: newsAPIKey,
  //   //   country: countryQuery,
  //   //   category: categoryQuery,
  //   // );
  //   // if (httpResponse) {

  //   // }
  // }
}
