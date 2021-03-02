import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materials/constant.dart';
import 'services.dart';
import 'model/material.dart';

class ReadJsonToModel extends StatefulWidget {
  @override
  _ReadJsonToModelState createState() => _ReadJsonToModelState();
}

class _ReadJsonToModelState extends State<ReadJsonToModel> {
  @override
  Widget build(BuildContext context) {
    var d=10;


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
                      return ExpansionTile(
                        key: Key("$index"),
                        title: Text(materialData.name),
                        subtitle: Text(materialData.type),
                        children: <Widget>[
                          Container(
                            color: Colors.grey.withAlpha(55),
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("id: ${materialData.id}"),
                                  SizedBox(height: 5),
                                  Text("category_: ${materialData.category}"),
                                  SizedBox(height: 5),
                                  Text("add_: ${materialData.add}"),
                                  SizedBox(height: 5),
                                  Text("use_: ${materialData.use}"),
                                  SizedBox(height: 5),
                                  Text("replace_: ${materialData.replace}"),
                                  SizedBox(height: 5),
                                  Text("chem_: ${materialData.chem}"),
                                ],
                              ),
                            ),
                          )
                        ],
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
