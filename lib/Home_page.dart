import 'package:flutter/material.dart';
import 'package:prapp/widgets/Main_category_list.dart';

class Home_page extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int selected;
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(
        'Pregnancy Aid',
      ),
      backgroundColor:Colors.pinkAccent ,);
     double land_width = MediaQuery.of(context).size.width-appBar.preferredSize.height - MediaQuery.of(context).padding.top ;
    print(land_width.toString());
    double land_height = MediaQuery.of(context).size.height-appBar.preferredSize.height - MediaQuery.of(context).padding.top;


    var categories=[
      {"id":1 ,"title":"physical changes","Image":"assets/images/romantic.jpg"},
      {"id":2,"title":"clothing","Image":"assets/images/classic.jpg"},
      {"id":3 ,"title":"Mental changes","Image":"assets/images/romantic4.jpeg"},
      {"id":4 ,"title":"physical changes","Image":"assets/images/romantic5.jpeg"},
      {"id":5 ,"title":"physical changes","Image":"assets/images/topsongs.jpeg"}];
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
            body:Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(1),
                        height: land_height * 0.15,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,

                            itemBuilder: (BuildContext ctxt, int index) {

                              return GestureDetector(
                                onTap: ()=>setState(() {
                                  selected=categories[index]['id'];

                                }),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(categories[index]["Image"]),
                                        radius: 30,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left:3.0),
                                      child: FittedBox(child: Text(categories[index]["title"],style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue),)),
                                    )
                                  ],
                                ),
                              );


                            })),
                    if(selected==1)
                      Container(
                          height: land_height * 0.7,
                      //color: Colors.green,
                        child: Main_category_list(categories)
                    )
                    else if(selected==2) Container(
                      height: land_height * 0.3,
                      color: Colors.purple,
                    )
                    else if(selected==3) Container(
                        height: land_height * 0.3,
                        color: Colors.yellow,
                      )
                    else
                        Container(
                            height: land_height * 0.7,
                            //color: Colors.green,
                            child: Main_category_list(categories)
                        )
                  ],
                )

            )



        )
    );
  }
}

