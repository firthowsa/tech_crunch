import '../../../utils/constants/nums.dart';
import '../../../utils/constants/strings.dart';

class TechCrunchRequest {
  final String apiKey;
  final String sources;
 //  final String category;
 //  final String country;
  final int page;
  final int pageSize;
//,abc-news,cbs-news
  TechCrunchRequest( {
    this.apiKey = defaultApiKey,
    this.sources = 'al-jazeera-english',
   //  this.category = "technology",
   //  this.country = "cn",
    this.page = 1,
    this.pageSize = defaultPageSize,
  });
}