import 'package:flutter/material.dart';
import 'package:pdpui/login_page.dart';
import 'package:pdpui/login_task.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LoginTask(),
      routes: {
        LoginPage.id:(context)=>LoginPage(),
        LoginTask.id:(context)=>LoginTask(),
    },
    );
  }
}