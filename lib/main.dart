import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Center(child: Text("UI")),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("User", style: TextStyle(fontSize: 18, color: Colors.red),),
            ),
            SizedBox(
              width: 6,
            ),
            Center(


              child: Text("Interface", style: TextStyle(fontSize: 18, color: Colors.green),),
            ),
          ],
        ),
      ),
    );
  }
}