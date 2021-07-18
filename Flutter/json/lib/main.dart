import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json/model/page_model.dart';
import 'package:json/services/product_services.dart';
import 'package:json/services/photo_services.dart';
import 'package:json/services/address_services.dart';
import 'package:json/services/student_services.dart';
import 'package:json/services/shape_services.dart';
import 'package:json/services/bakery_services.dart';
import 'package:json/services/page_services.dart';
import 'package:json/services/post_services.dart';
import 'package:json/model/post_model.dart';

void main() {
  runApp(new MyApp());
  // loadProduct();
//  loadPhotos();
  // loadAddress();
  // loadStudent();
  // loadShape();
//  loadBakery();
  loadPage();
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Page> page=[];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      loadPage().then((value) {
        Page place = new  Page.fromJson(value);

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: (context, index){
          return Column(children: [
            Text(place[index])
          ],)
        }

        ));
  }
}
