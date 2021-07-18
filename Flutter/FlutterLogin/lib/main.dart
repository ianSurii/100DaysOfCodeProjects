import 'package:flutter/material.dart';
import 'package:FlutterLogin/Screens/login/login.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '#100DaysOfCodeLogin',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor:Colors.blueAccent,

      ),
      home:Login(),
    );
  }

}

