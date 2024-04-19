import 'package:netflix/api/api_key.dart';

const baseUrl = "https://api.themoviedb.org/3/";
const imageUrl = "https://image.tmdb.org/t/p/w500/";

class ApiUrls {
  static const downloadsUrl = "${baseUrl}movie/top_rated$apiKey";
  static const trendingUrl = "${baseUrl}trending/all/day$apiKey";
  static const releasedInPastYearUrl = "${baseUrl}movie/popular$apiKey";
  static const tenesDramasUrl = "${baseUrl}trending/tv/day$apiKey";
  static const southCinemaUrl = "${baseUrl}movie/now_playing$apiKey";
  static const upcomingurl = "${baseUrl}movie/upcoming$apiKey";
  static const videoApiUrl = "${baseUrl}movie/1096197/videos$apiKey";
}

const imageList = [
  "https://image.tmdb.org/t/p/w600_and_h900_bestv2/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg",
  "https://image.tmdb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
  "https://image.tmdb.org/t/p/w600_and_h900_bestv2/j91LJmcWo16CArFOoapsz84bwxb.jpg",
  "https://image.tmdb.org/t/p/w600_and_h900_bestv2/c3e9e18SSlvFd1cQaGmUj5tqL5P.jpg",
  "https://image.tmdb.org/t/p/w600_and_h900_bestv2/BgcvtsVWLQfjHD6Dr3YYgeSLYk.jpg"
];

const videoList = [
  "Nv5r7-p9l44",
  "qOFSk7SsPls",
  "EclwoVfNgOA",
  "tZ4gg-UAgC8",
  "kZVLxyCwSDI",
  "o7FGXxT9mng",
  "KXVi1uw8ZWk",
  "mVR1-NfiLDk",
  "uYKqxzJjqAQ",
  "r_mI-_Wb-9Y",
  "HK7q3njG2og",
  "BymU072rUV8",
  "yfk8ak1rKIM"
];
