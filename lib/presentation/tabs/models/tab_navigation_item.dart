
import 'package:Materials/presentation/home/page/home_page.dart';
import 'package:Materials/presentation/search/pages/search_page.dart';
import 'package:Materials/presentation/shop/page/shop_page.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final String label;
  final Icon icon;

  TabNavigationItem(
    this.page,
    this.label,
    this.icon,
  );

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          HomePage(),
          'home',
          Icon(Icons.home),
        ),
        TabNavigationItem(
          ShopPage(),
          'shop',
          Icon(Icons.shop),
        ),
        TabNavigationItem(
          SearchPage(),
          'search',
          Icon(Icons.search),
        ),
      ];
}
