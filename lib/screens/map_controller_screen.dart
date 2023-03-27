import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/data/map_model.dart';
import 'package:http/http.dart' as http;

class MapController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    getPostAPI();
    super.onInit();
  }

  AppModel? appModel;

  getPostAPI() async {
    var client = http.Client();
    try {
      http.Response response = await client.get(
        Uri.parse('https://rickandmortyapi.com/api/character'),
      );
      if (response.statusCode == 200) {
        appModel = AppModel.fromJson(jsonDecode(response.body));
        update();

        //postsList = (jsonDecode(response.body) as List?)!.map((dynamic e) => PostModel.fromJson(e)).toList();
      } else {
        debugPrint("Status code......................${response.statusCode}");
      }
    } finally {
      client.close();
    }
  }
}
