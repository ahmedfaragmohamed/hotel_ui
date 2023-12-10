import 'package:flutter/material.dart';
import 'package:hotel_ui/home_screen.dart';
import 'package:hotel_ui/items/nearby_item.dart';
import 'package:hotel_ui/items/popular_item.dart';
import 'package:hotel_ui/splash_screen.dart';

import 'NavBar.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: NavBar()
    );
  }
}

