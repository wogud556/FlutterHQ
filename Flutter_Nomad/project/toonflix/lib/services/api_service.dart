import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon.dart';

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  //pub.dev로 가면 dart의 패키지를 확인할 수 있다.
  static Future<List<WebtoonModel>> getTodaysToons() async {
    //비동기로 따로 처리하게끔 만든다.
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response =
        await http.get(url); // 미래에 받을 값을 미리 정해놓음 보통 http 패키지에서 많이 사용됨
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebtoonModel.fromJson(webtoon);
        print(toon.title);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
