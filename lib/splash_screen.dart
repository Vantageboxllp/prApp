import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Home_page.dart';
import 'main.dart';
class splash_screen  extends State<MyHomePage>{


  @override
  Widget build(BuildContext context) {
    return Center(

      child: Container(
        height: MediaQuery.of(context).size.height,
        child: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new Home_page(),
          backgroundColor: Colors.white,
          title: new Text('Pregnancy Aid',textScaleFactor: 3,),
          image: new Image.asset(
              'assets/images/p2.png'
          ),
          loadingText: Text("Loading"),
          photoSize: 150.0,
          loaderColor: Colors.pinkAccent,
        ),
      ),
    );

  }

}