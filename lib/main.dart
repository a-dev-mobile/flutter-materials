import 'package:flutter/material.dart';
import 'package:materials/constant.dart';
import 'package:materials/flutter_read_json/read_json_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: Constant.APP_NAME,
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ReadJsonLocal(),

    );
  }
}
