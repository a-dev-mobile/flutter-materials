import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isRedAppBar = false;
  int count = 0;

  colorAppBar() {
    var color;

    if (isRedAppBar) {
      isRedAppBar = false;
      color = Colors.blue;
    } else {
      isRedAppBar = true;
      color = Colors.red;
    }

    print('color is red $isRedAppBar');
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: colorAppBar(),
        title: Text('test button'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () => {setState(() {})},
          child: Text('button clicks = color is red $isRedAppBar'),
        ),
      ),
    );
  }
}

// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:materials/constant.dart';
//
//
// import 'models/material.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   Future<List<Material_>> getDataFromFakeServer() async {
//     return await Future.delayed(Duration(seconds: 1), () {
//       List<dynamic> data = jsonDecode(Constant.MATERIAL_SHORT);
//       List<Material_> material =
//           data.map((data) => Material_.fromJson(data)).toList();
//       return material;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Json Serialization"),
//         ),
//         body: Container(
//           child: FutureBuilder<List<Material_>>(
//               future: getDataFromFakeServer(),
//               builder: (context, data) {
//                 if (data.connectionState != ConnectionState.waiting &&
//                     data.hasData) {
//                   var materialList = data.data;
//                   return ListView.builder(
//                       itemCount: materialList.length,
//                       itemBuilder: (context, index) {
//                         var materialData = materialList[index];
//                         return ExpansionTile(
//                           key: Key("$index"),
//                           title: Text(materialData.name_ ?? ""),
//                           subtitle: Text(materialData.class_ ?? ""),
//                           children: <Widget>[
//                             Container(
//                               color: Colors.grey.withAlpha(55),
//                               width: double.infinity,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(20.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Text("chem_: ${materialData.chem_}"),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text("use_: ${materialData.use_}"),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text("add_: ${materialData.add_}"),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     Text("replace_: ${materialData.replace_}"),
//                                   ],
//                                 ),
//                               ),
//                             )
//                           ],
//                         );
//                       });
//                 } else {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//               }),
//         ),
//       ),
//     );
//   }
// }
