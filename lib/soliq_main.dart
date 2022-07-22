import 'package:flutter/material.dart';
class SoliqMain extends StatefulWidget {
  static final String id = "soliq_main";
  const SoliqMain({Key? key}) : super(key: key);

  @override
  State<SoliqMain> createState() => _SoliqMainState();
}

class _SoliqMainState extends State<SoliqMain> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfff6f6fa),
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Center(child: Text("Soliqlarni to`lash", style: TextStyle(color: Color.fromARGB(255, 54, 75, 168), fontSize: 18),)),
            ),
            backgroundColor: Color(0xfff6f6fa),
            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 54, 75, 168),
              ),
            ),
            elevation: 0,
          ),
          body:ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Color.fromARGB(255, 54, 75, 168))
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "JSHSHIR",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 13, right: 20, left: 20),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white
                      ),
                      child: Center(child: Text("Olimov Asqarali", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Radio(value: 0, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=1)),
                            Text("Joriy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ],
                        ),

                        Row(
                          children: [
                            Radio(value: 1, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=1)),
                            Text("Yillik", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13)
                      ),
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 12),
                            child: Row(
                              children: [
                                Text("Obekt 1", style: TextStyle(color: Color.fromARGB(255, 30, 43, 108), fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: double.infinity,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3)
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 13, top:13 ),
                                child: Text("Manzil", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 13, top:13 ),
                                child: Text("Shayxontoxir tumani (noturar)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Kadastir raqami", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("10:10:02:01:01:0089", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Joriy summa", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("26 079.93", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Yillik summa", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("1 080 279.36", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 0.2
                                )
                              ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(value: 0, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=0)),
                                        Text("Joriy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Radio(value: 1, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=0)),
                                        Text("Yillik", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        border: Border.all(color: Color.fromARGB(255, 30, 43, 108))
                                    ),
                                    child: Center(child: Text("Batafsil", style: TextStyle(color: Color.fromARGB(255, 30, 43, 108) ),)),
                                  ),
                                )
                              ],
                            ) ,
                          )

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 13),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 12),
                            child: Row(
                              children: [
                                Text("Obekt 1", style: TextStyle(color: Color.fromARGB(255, 30, 43, 108), fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: double.infinity,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3)
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 13, top:13 ),
                                child: Text("Manzil", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 13, top:13 ),
                                child: Text("Shayxontoxir tumani (noturar)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Kadastir raqami", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("10:10:02:01:01:0089", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Joriy summa", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("26 079.93", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Yillik summa", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("1 080 279.36", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 0.2
                                  )
                                ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(value: 0, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=0)),
                                        Text("Joriy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Radio(value: 1, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=0)),
                                        Text("Yillik", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        border: Border.all(color: Color.fromARGB(255, 30, 43, 108))
                                    ),
                                    child: Center(child: Text("Batafsil", style: TextStyle(color: Color.fromARGB(255, 30, 43, 108) ),)),
                                  ),
                                )
                              ],
                            ) ,
                          )

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 13),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 12),
                            child: Row(
                              children: [
                                Text("Obekt 1", style: TextStyle(color: Color.fromARGB(255, 54, 75, 168), fontSize: 16, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: double.infinity,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3)
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 13, top:13 ),
                                child: Text("Manzil", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 13, top:13 ),
                                child: Text("Shayxontoxir tumani (noturar)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Kadastir raqami", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("10:10:02:01:01:0089", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Joriy summa", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("26 079.93", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Image.asset("images/solid.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top:10, bottom: 10 ),
                                child: Text("Yillik summa", style: TextStyle(fontSize: 12),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top:10, bottom: 10 ),
                                child: Text("1 080 279.36", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,)),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 0.2
                                  )
                                ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(value: 0, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=0)),
                                        Text("Joriy", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Radio(value: 1, groupValue: selectedValue, onChanged:(value)=>setState(()=>selectedValue=0)),
                                        Text("Yillik", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        border: Border.all(color: Color.fromARGB(255, 54, 75, 168))
                                    ),
                                    child: Center(child: Text("Batafsil", style: TextStyle(color: Color.fromARGB(255, 54, 75, 168) ),)),
                                  ),
                                )
                              ],
                            ) ,
                          )

                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Color.fromARGB(255, 54, 75, 168))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            // enabledBorder: OutlineInputBorder(
                            //     borderSide: new BorderSide(color: Colors.teal)
                            // ),
                            hintText: "381 621.85",
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 54, 75, 168),
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(color: Color.fromARGB(255, 54, 75, 168))
                      ),
                      child: Center(child: Text("To'lash", style: TextStyle(fontSize: 16, color: Colors.white),))
                    ),
                  )
                ],
              ),
            ],
          )
        ),
    );
  }
}
