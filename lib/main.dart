import 'package:flutter/material.dart';
import 'package:my_coffeeshop/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
      },
    ),
  );
}


