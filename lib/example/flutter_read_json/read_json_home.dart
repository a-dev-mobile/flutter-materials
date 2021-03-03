import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materials/constant.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

import 'dart:developer' as developer;

class ReadJsonLocal extends StatefulWidget {
  @override
  _ReadJsonLocalState createState() => _ReadJsonLocalState();
}

class _ReadJsonLocalState extends State<ReadJsonLocal> {
  List _items = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle
        .loadString('lib/flutter_read_json/json/materials.json');

    final data = await json.decode(response);
    setState(() {
      _items = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    developer.log('Widget build', name: Constant.TAG);
    // developer.log(jsonText, name: Constant.TAG);

    return Scaffold(
        appBar: AppBar(
          title: Text(Constant.APP_NAME),
        ),
        body: Container(
          child: new ListView.builder(
              itemCount: _items == null ? 0 : _items.length,
              itemBuilder: (BuildContext context, int index) {
                var name = _items[index]['name_'];
                var type = _items[index]['type_'];
                return new Column(
                  children: <Widget>[
                    new ListTile(
                      leading: CircleAvatar(
                        child: new Icon(Icons.account_box),
                      ),
                      title: Text(name),
                      subtitle: Text(type),
                    ),
                    new Divider(),
                  ],
                );
              }),
        ));
  }

  @override
  void initState() {
    super.initState();
    this.readJson();
  }
}
