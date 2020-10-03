import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:prapp/Models/main_category_data.dart';


// ignore: non_constant_identifier_names
Future<MainCategoryData> fetch_main_category() async {
  http.Response response = await http.get('https://raw.githubusercontent.com/Vantageboxllp/boyapi/master/Main_categories');
  //List<Tutorials> list;

  if (response.statusCode == 200) {
    var responseJson = json.decode(response.body);
    print("responseJson : $responseJson");

    return MainCategoryData.fromJson(responseJson);
  } else {
    // If that call was not successful (response was unexpected), it throw an error.
    throw Exception('Failed to load post');
  }
  // return Tutorial.fromJson(json.decode(response.body));
}
