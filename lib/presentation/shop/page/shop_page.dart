
import 'package:Materials/presentation/product_detail/pages/product_detail_page.dart';
import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => ShopPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () => Navigator.of(context).push(
            ProductDetailPage.route(),
          ),
          child: Text("Navigate to Product Detail Page"),
        ),
      ),
    );
  }
}