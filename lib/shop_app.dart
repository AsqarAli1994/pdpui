import 'package:flutter/material.dart';
class ShopApp extends StatefulWidget {
  static final String id = "shop_app";
  const ShopApp({Key? key}) : super(key: key);

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {

  final List<String> _listItem=[
    "images/image_1.jpeg",
    "images/image_2.jpg",
    "images/image_3.png",
    "images/image_4.jpg",
    "images/image_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        title: Center(child: Text("ShopApp"),),
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: EdgeInsets.all(10),
          child: Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text('8', style: TextStyle(fontSize: 16),)),
          ),
          ),

        ],
      ),

      body: Column(
        children: [
          Container(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 240,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "images/noutbook.png"
                            )
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Lifestyle sale", style: TextStyle(fontSize: 25, color: Colors.white),),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 350,
                          height: 42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13)
                          ),
                          child: Center(child: Text("Shop now", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: Container(
              child: GridView.count(
                padding: EdgeInsets.only(left: 8, right: 8),
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children:
                  _listItem.map((item) => cellOflist(item)).toList()
                // _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          )

        ],
      )
    );
  }

  Widget cellOflist(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }

}
