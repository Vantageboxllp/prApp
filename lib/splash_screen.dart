import 'package:flutter/material.dart';
import 'package:prapp/Models/main_category_data.dart';
import 'package:prapp/rest/getMaincategory.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Home_page.dart';
import 'main.dart';

class splash_screen extends State<MyHomePage> {
var time;
  MainCategoryData response;
  @override
  void initState() {
    super.initState();
    fetch_main_category().then((videos) {
      setState(() {
        response = videos;

      });
    });
  }
  @override
  Widget build(BuildContext context) {


    return FutureBuilder(
        future: fetch_main_category(),
      builder: (context, AsyncSnapshot snapshot) {
     if( snapshot.connectionState == ConnectionState.waiting){
       time=10;
     }else{

         time=5;

     }
      return Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SplashScreen(
           seconds: time,
            navigateAfterSeconds: fetch_main_category().then((value) {
              response = value;

              //print("Data123:$value".toString());
            }) !=
                null
                ? new Home_page(response)
                : Container(child: Text("please wait")),
            backgroundColor: Colors.white,
            title: new Text(
              'Pregnancy Aid',
              textScaleFactor: 3,
            ),
            image: new Image.asset('assets/images/p2.png'),
            loadingText: Text("Loading"),
            photoSize: 150.0,
            loaderColor: Colors.pinkAccent,
          ),
        ),
      );
    }

    );
  }
}
