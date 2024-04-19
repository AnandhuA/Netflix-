import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/api/api_key.dart';
import 'package:netflix/api/models/models.dart';
import 'package:netflix/api/urls.dart';

List<String> downloadsImageUrls = [];
List<String> trendingUrls = [];
List<String> releasedInPastYearUrls = [];
List<String> tenesDramasUrls = [];
List<String> southCinemaUrls = [];
List<UpcomingModels> comingSoon = [];
List<UpcomingModels> topRated = [];
List<TrendingModels> terndingModels = [];
List<String> searchItames = [];

getSearchIteam({required String query}) async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      searchItames.clear();
      final responce = await http
          .get(Uri.parse("${baseUrl}search/movie?query=$query&$apiKey"));

      if (responce.statusCode == 200) {
        final data = await jsonDecode(responce.body)["results"] as List;
        for (var i = 0; i < data.length; i++) {
          searchItames.add(data[i]["poster_path"]);
        }

        return;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    retries++;
  }
}

getUpcoming() async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.upcomingurl),
      );
      debugPrint("-------------${response.statusCode}-------------------");
      if (response.statusCode == 200) {
        // Request succeeded
        final data = jsonDecode(response.body)["results"] as List;
        debugPrint(data.length.toString());
        for (var i = 0; i < data.length; i++) {
          String? videoKey;

          videoKey = await getvideoUrl(data[i]["id"].toString());

          UpcomingModels newModel = UpcomingModels(
              id: data[i]["id"],
              releaseDate: data[i]["release_date"],
              title: data[i]["title"],
              overview: data[i]["overview"],
              videoKey: videoKey);
          comingSoon.add(newModel);
        }

        return;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }
}

Future<String?> getvideoUrl(String videoId) async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final videoResponce = await http.get(
        Uri.parse("${baseUrl}movie/$videoId/videos$apiKey"),
      );
      if (videoResponce.statusCode == 200) {
        // Request succeeded
        final videodata = jsonDecode(videoResponce.body)["results"] as List;
        return videodata[0]["key"];
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }
  return null;
}

getDownloads() async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.downloadsUrl),
      );

      if (response.statusCode == 200) {
        // Request succeeded
        final data = jsonDecode(response.body)["results"] as List;
        for (var i = 0; i < data.length; i++) {
          downloadsImageUrls.add(data[i]["poster_path"].toString());
        }
        return;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }

  downloadsImageUrls = imageList;
}

getTrending() async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.trendingUrl),
      );

      if (response.statusCode == 200) {
        // Request succeeded
        final data = jsonDecode(response.body)["results"] as List;

        for (var i = 0; i < data.length; i++) {
          trendingUrls.add(data[i]["poster_path"].toString());
          TrendingModels newModel = TrendingModels(
            banner: data[i]["backdrop_path"],
            title: data[i]["title"],
          );
          terndingModels.add(newModel);
        }
        return;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }
  terndingModels.clear();
  trendingUrls = imageList;
}

getReleasedPastYear() async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.releasedInPastYearUrl),
      );

      if (response.statusCode == 200) {
        // Request succeeded
        final data = jsonDecode(response.body)["results"] as List;
        for (var i = 0; i < data.length; i++) {
          releasedInPastYearUrls.add(data[i]["poster_path"].toString());
        }
        return;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }
  releasedInPastYearUrls = imageList;
}

getTenesDramas() async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.tenesDramasUrl),
      );

      if (response.statusCode == 200) {
        // Request succeeded
        final data = jsonDecode(response.body)["results"] as List;
        for (var i = 0; i < data.length; i++) {
          tenesDramasUrls.add(data[i]["poster_path"].toString());
        }
        return;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }

  tenesDramasUrls = imageList;
}

getSouthCinemas() async {
  const maxRetries = 3;
  int retries = 0;

  while (retries < maxRetries) {
    try {
      final response = await http.get(
        Uri.parse(ApiUrls.southCinemaUrl),
      );

      if (response.statusCode == 200) {
        // Request succeeded
        final data = jsonDecode(response.body)["results"] as List;
        for (var i = 0; i < data.length; i++) {
          southCinemaUrls.add(data[i]["poster_path"].toString());
        }
        return;
      }
    } catch (e) {
      debugPrint('Error: $e');
    }

    retries++;
  }
  southCinemaUrls = imageList;
}
