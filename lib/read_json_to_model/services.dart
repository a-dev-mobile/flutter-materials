import 'dart:convert';

import 'package:flutter/services.dart';

import '../constant.dart';
import 'model/material.dart';
import 'dart:developer' as developer;

class Services {
  static const String path = 'lib/read_json_to_model/json/materials.json';

  static Future<List<MaterialModel>> getMaterials() async {
    developer.log('getMaterials', name: Constant.TAG);
    final response = await rootBundle.loadString(path);
    await Future.delayed(Duration(seconds: 3));
    List<dynamic> data = jsonDecode(response);
    List<MaterialModel> materials =
        data.map((data) => MaterialModel.fromJson(data)).toList();
    return materials;
  }
}
