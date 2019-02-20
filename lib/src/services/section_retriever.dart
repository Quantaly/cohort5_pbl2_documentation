import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/section.dart';

class SectionRetriever {
  final http.Client _client;

  SectionRetriever(this._client);

  Map<String, Future<Section>> cache = {};

  Future<Section> retrieve(String section) {
    if (cache.containsKey(section)) return cache[section];
    return (cache[section] =
        _client.get("sections/$section.json").then(_parseSection));
  }

  static Section _parseSection(http.Response response) =>
      Section.fromJson(jsonDecode(response.body));
}
