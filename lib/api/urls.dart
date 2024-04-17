import 'package:netflix/api/api_key.dart';

const baseUrl = "https://api.themoviedb.org/3/";
const imageUrl = "https://image.tmdb.org/t/p/w500/";

class ApiUrls {
  static const downloadsUrl = "${baseUrl}movie/top_rated$apiKey";
  static const trendingUrl = "${baseUrl}trending/all/day$apiKey";
  static const releasedInPastYearUrl = "${baseUrl}movie/popular$apiKey";
  static const tenesDramasUrl = "${baseUrl}trending/tv/day$apiKey";
  static const southCinemaUrl = "${baseUrl}movie/now_playing$apiKey";
}
