class WebtoonEpisodeModel {
  final String id, title, rating, date;
  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];
}
