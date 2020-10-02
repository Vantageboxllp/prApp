import 'package:flutter/material.dart';
import 'package:prapp/Models/main_category_data.dart';
import 'package:prapp/splash_screen.dart';
import 'package:prapp/widgets/Main_category_list.dart';

import 'package:flutter/material.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: ThemeData.light().textTheme.copyWith
        (
        title: TextStyle
          (
          color: Colors.pink,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        button: TextStyle(color: Colors.white),
      ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  splash_screen createState() => splash_screen();
}