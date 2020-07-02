import 'package:flutter/material.dart';
import 'package:uiux_texfield/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UIUX',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
