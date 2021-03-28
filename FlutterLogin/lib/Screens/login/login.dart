
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

 class Login extends StatelessWidget{

   Widget build(BuildContext context){
     return Scaffold(
         backgroundColor: Colors.white,
          appBar: AppBar(
            title:Text('Login',
            style: TextStyle( color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30),
            ),
          leading: Text("==",
          style:TextStyle(color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 30)),

            actions: <Widget>[

            ],

          ),

     body: Body(),
     );

   }


 }
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity*0.5,
            child: Column(
              children: <Widget>[
        TextField(

        cursorColor: Colors.green,
        decoration: InputDecoration(

        hintText:"Hint",
        border: InputBorder.none,
    ),
          ),
          Container(
              child: Column(
                children: <Widget>[
                  TextField(

                  )
                ],
              )
          ),


        ],
      )
      ),
      ],
    ),

    );
  }

}

