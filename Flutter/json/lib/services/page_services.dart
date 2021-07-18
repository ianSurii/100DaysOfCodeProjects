import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:json/model/page_model.dart';

Future<String> _loadPageAsset() async {
  return await rootBundle.loadString('assets/page.json');
}

Future<String> loadPage() async {
  String jsonPage = await _loadPageAsset();
  var jsonResponse = json.decode(jsonPage);

  // Page page = new Page.fromJson(jsonResponse);
  // print(page.data[0].imagesList[0].imageName);

  return jsonResponse;
}
