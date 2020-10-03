import 'package:flutter/material.dart';
import 'package:prapp/widgets/video_player.dart';

class Main_category_list extends StatefulWidget {
  final category;

  Main_category_list(this.category);

  @override
  _Main_category_listState createState() => _Main_category_listState();
}

class _Main_category_listState extends State<Main_category_list> {
  int selected_index;

  _getSubcategory(int index) {
/*setState(() {
  selected_index=index;

});*/
  }

  @override
  Widget build(BuildContext context) {
    double height_meaure = MediaQuery.of(context).size.height;
    double width_meaure = MediaQuery.of(context).size.width;
    //var transaction1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(

            child: Padding(
          padding: const EdgeInsets.all(8.0),
              child: Text(
            "Category",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple),
          ),
        )),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            height: height_meaure * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.category.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return GestureDetector(
                   onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => video_player()),
                   );

                  },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          child: Flexible(
                            child: Image.asset(
                              widget.category[index]["Image"],
                              height: 200,
                              width: 200,
                            ),
                            fit: FlexFit.tight,
                          ),
                          elevation: 5,

                         clipBehavior: Clip.hardEdge,
                          shadowColor: Colors.grey,
                          semanticContainer: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: FittedBox(
                              child: Text(
                            widget.category[index]["title"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.blue),
                          )),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
