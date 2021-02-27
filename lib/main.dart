import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materials/constant.dart';
import 'package:materials/models/category.dart';

import 'models/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Future<List<Category>> getDataFromFakeServer() async {
    return await Future.delayed(Duration(seconds: 1), () {
      List<dynamic> data = jsonDecode(Constant.CATEGORY);
      List<Category> category =
          data.map((data) => Category.fromJson(data)).toList();
      return category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Json Serialization"),
        ),
        body: Container(
          child: FutureBuilder<List<Category>>(
              future: getDataFromFakeServer(),
              builder: (context, data) {
                if (data.connectionState != ConnectionState.waiting &&
                    data.hasData) {
                  var categoryList = data.data;
                  return ListView.builder(
                      itemCount: categoryList.length,
                      itemBuilder: (context, index) {
                        var categoryData = categoryList[index];
                        return ExpansionTile(
                          key: Key("$index"),
                          title: Text(categoryData.category_ ?? ""),
                          subtitle: Text("categoryData.class_ ?? " ""),
                        );
                      });
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ),
    );
  }
}
