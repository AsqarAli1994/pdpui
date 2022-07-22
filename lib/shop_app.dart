import 'package:flutter/material.dart';
class ShopApp extends StatefulWidget {
  static final String id = "shop_app";
  const ShopApp({Key? key}) : super(key: key);

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
          Column(
            children: [
              Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                            image: AssetImage('images/noutbook.png'),
                            fit: BoxFit.cover
                          )
                        ),

                      ),
                    ),
                  )
                ],
              ),

            ],
          )
        ],
      )
    );
  }
}
