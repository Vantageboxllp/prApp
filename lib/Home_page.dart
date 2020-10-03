import 'package:flutter/material.dart';
import 'package:prapp/widgets/Main_category_list.dart';

import 'Models/main_category_data.dart';

class Home_page extends StatefulWidget {
  // This widget is the root of your application.
  final MainCategoryData main_category_list;

  Home_page(this.main_category_list);

  @override
  _Home_pageState createState() => _Home_pageState(this.main_category_list);
}

class _Home_pageState extends State<Home_page> {
  int selected;
  final MainCategoryData main_category_list;

  _Home_pageState(this.main_category_list);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        'Pregnancy Aid',
      ),
      backgroundColor: Colors.pinkAccent,
    );
    double land_width = MediaQuery.of(context).size.width -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    print(land_width.toString());
    double land_height = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    var categories2 = [
      {
        "id": 1,
        "title": "Body Changes",
        "Image":
            "https://img.pngio.com/pregnant-woman-png-transparent-pregnant-woman-png-transparent-pregnant-woman-png-920_899.png"
      },
      {
        "id": 2,
        "title": "Mental Changes",
        "Image": "https://cdn.cdnparenting.com/articles/2018/02/211472944-H.jpg"
      },
      {
        "id": 3,
        "title": "Food/Diet",
        "Image":
            "https://cdn2.momjunction.com/wp-content/uploads/2014/12/Vitamin-A-Rich-Foods-1.jpg"
      },
      {
        "id": 4,
        "title": "Exercises",
        "Image":
            "https://rotundaprivate.ie/wp-content/uploads/2017/12/shutterstock_190732799-e1512823308914.jpg"
      },
      {
        "id": 5,
        "title": "Checkups/Tests",
        "Image":
            "https://post.healthline.com/wp-content/uploads/2019/10/pregnancy-second-trimester-checkups-tests_thumb.jpg"
      }
    ];
    var categories = [
      {"id": 1, "title": "Body Changes", "Image": "assets/images/romantic.jpg"},
      {
        "id": 2,
        "title": "Mental Changes.",
        "Image": "assets/images/classic.jpg"
      },
      {"id": 3, "title": "Food/Diet", "Image": "assets/images/romantic4.jpeg"},
      {"id": 4, "title": "Exercises", "Image": "assets/images/romantic5.jpeg"},
      {
        "id": 5,
        "title": "Checkups/Tests",
        "Image": "assets/images/topsongs.jpeg"
      }
    ];
    return MaterialApp(
        title: 'pregnancy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.pinkAccent,
          primaryColor: Colors.pinkAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // var container_height= MediaQuery.of(context).size.height;
        //var container_width= MediaQuery.of(context).size.width;
        home: Scaffold(
            appBar: appBar,
            body: Container(
                child: Column(
              children: <Widget>[
                Container(
                    //margin: EdgeInsets.all(1),
                    height: land_height * 0.18,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: main_category_list.mainCategories.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return GestureDetector(
                            onTap: () => setState(() {
                              selected =
                                  main_category_list.mainCategories[index].id;
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(

                                  padding: const EdgeInsets.only(top: 1.0, left: 12),
                                  margin: EdgeInsets.all(4),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.pinkAccent,
                                    child: CircleAvatar(
                                      radius: 33,
                                      backgroundImage: NetworkImage(main_category_list.mainCategories[index].image),
                                    ),
                                  )
                                ),
                                Container(

                                  child: Text(
                                  main_category_list
                                      .mainCategories[index].title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                  padding: const EdgeInsets.only(top: 1.0, left: 10),
                                 margin: EdgeInsets.all(2),
                                  //fit: FlexFit.tight,
                                  //flex: 2,
                                )
                              ],
                            ),
                          );
                        })),
                if (selected == 1)
                  Expanded(
                    child: Container(
                        height: land_height * 0.7,
                        //color: Colors.green,
                        child: Main_category_list(categories)),
                  )
                else if (selected == 2)
                  Container(
                    height: land_height * 0.3,
                    color: Colors.purple,
                  )
                else if (selected == 3)
                  Container(
                    height: land_height * 0.3,
                    color: Colors.yellow,
                  )
                else
                  Container(
                      height: land_height * 0.7,
                      //color: Colors.green,
                      child: Main_category_list(categories))
              ],
            ))));
  }
}
