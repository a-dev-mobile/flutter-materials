import 'dart:convert';

import 'package:Materials/model/material.dart';
import 'package:Materials/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constant.dart';

class SearchPage extends StatefulWidget {
  static Route<dynamic> route() =>
      MaterialPageRoute(builder: (context) => SearchPage());

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constant.APP_NAME),
      ),
      body: Container(
        child: FutureBuilder<List<MaterialModel>>(
            future: Services.getMaterials(),
            builder: (context, data) {
              if (data.connectionState != ConnectionState.waiting &&
                  data.hasData) {
                var materialList = data.data;
                return ListView.builder(
                    itemCount: materialList.length,
                    itemBuilder: (context, index) {
                      var materialData = materialList[index];
                      return Card(
                        child: ListTile(
                          title: Text(materialData.use),
                          key: Key("$index"),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
