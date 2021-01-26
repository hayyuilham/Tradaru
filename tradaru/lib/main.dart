import 'package:flutter/material.dart';
import 'package:tradaru/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tradaru',
      theme: new ThemeData(primaryColor: Colors.white, fontFamily: 'Raleway'),
      home: new HomePage(),
      // home: DetailPage(),
    );
  }
}
