import 'package:equatable/equatable.dart';

import '../articles.dart';

class TechCrunchResponse extends Equatable {
  final String status;
  final int totalResults;
  final List<Article> articles;

  const TechCrunchResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory TechCrunchResponse.fromMap(Map<String, dynamic> map) {
    return TechCrunchResponse(
      status: (map['status'] ?? '') as String,
      totalResults: (map['totalResults'] ?? 0) as int,
      articles: List<Article>.from(
        map['articles'].map<Article>(
              (x) => Article.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, totalResults, articles];
}