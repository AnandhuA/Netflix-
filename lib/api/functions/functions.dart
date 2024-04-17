import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/api/urls.dart';

List<String> downloadsImageUrls = [];
List<String> trendingUrls = [];
List<String> releasedInPastYearUrls = [];
List<String> tenesDramasUrls = [];
List<String> southCinemaUrls= [];

getDownloads() async {
  final responce = await http.get(
    Uri.parse(ApiUrls.downloadsUrl),
    headers: {
      'User-Agent': 'Mozilla/5.0',
    },
  );
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body)["results"] as List;
    for (var i = 0; i < data.length; i++) {
      downloadsImageUrls.add(data[i]["poster_path"].toString());
    }
  }
}

getTrending() async {
  final responce = await http.get(
    Uri.parse(ApiUrls.trendingUrl),
    headers: {
      'User-Agent': 'Mozilla/5.0',
    },
  );
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body)["results"] as List;
    for (var i = 0; i < data.length; i++) {
      trendingUrls.add(data[i]["poster_path"].toString());
    }
  }
}

getReleasedPastYear() async {
  final responce = await http.get(
    Uri.parse(ApiUrls.releasedInPastYearUrl),
    headers: {
      'User-Agent': 'Mozilla/5.0',
    },
  );
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body)["results"] as List;
    for (var i = 0; i < data.length; i++) {
      releasedInPastYearUrls.add(data[i]["poster_path"].toString());
    }
  }
}

getTenesDramas() async {
  final responce = await http.get(
    Uri.parse(ApiUrls.tenesDramasUrl),
    headers: {
      'User-Agent': 'Mozilla/5.0',
    },
  );
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body)["results"] as List;
    for (var i = 0; i < data.length; i++) {
      tenesDramasUrls.add(data[i]["poster_path"].toString());
    }
  }
}
getSouthCinemas()async{
  final responce = await http.get(
    Uri.parse(ApiUrls.southCinemaUrl),
    headers: {
      'User-Agent': 'Mozilla/5.0',
    },
  );
  if (responce.statusCode == 200) {
    final data = jsonDecode(responce.body)["results"] as List;
    for (var i = 0; i < data.length; i++) {
      southCinemaUrls.add(data[i]["poster_path"].toString());
    }
  }
}
