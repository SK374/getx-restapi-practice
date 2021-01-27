import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}