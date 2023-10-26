import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/model/responses/tech_crunch_response.dart';
import '../../../utils/constants/strings.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;
//abstracted method that would be responsible of getting the data from the server,
  @GET('/top-headlines')
  Future<HttpResponse<TechCrunchResponse>> getBreakingNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("sources") String? sources,
    @Query("page") int? page,
    @Query("pageSize") int? pageSize,
  });
}
