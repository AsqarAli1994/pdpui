import 'package:flutter/material.dart';
import 'package:pdpui/login_page.dart';
import 'package:pdpui/login_task.dart';
import 'package:pdpui/shop_app.dart';
import 'package:pdpui/soliq_main.dart';
import 'package:pdpui/soliqlarni_tolash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ShopApp(),
      routes: {
        LoginPage.id:(context)=>LoginPage(),
        LoginTask.id:(context)=>LoginTask(),
        ShopApp.id:(context)=>ShopApp(),
        SoliqlarniTolash.id:(context)=>SoliqlarniTolash(),
        SoliqMain.id:(context)=>SoliqMain()
    },
    );
  }
}