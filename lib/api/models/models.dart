class UpcomingModels {
  String title;
  String releaseDate;
  int id;
  String? videoKey;
  String overview;

  UpcomingModels(
      {required this.id,
      required this.releaseDate,
      required this.title,
      required this.videoKey,
      required this.overview});
}

class TrendingModels {
  String banner;
  String title;

  TrendingModels({
    required this.banner,
    required this.title,
  });
}


