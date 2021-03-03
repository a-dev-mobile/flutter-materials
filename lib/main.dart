
import 'package:Materials/presentation/tabs/page/tab_page.dart';
import 'package:flutter/material.dart';


import 'constant.dart';


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
      // home: ReadJsonLocal(),
      // home: HomePage(),
      home: TabsPage(),
    );
  }
}
