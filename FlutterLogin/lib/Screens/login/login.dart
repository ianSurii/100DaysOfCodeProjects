import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
 class Login extends StatelessWidget{

   Widget build(BuildContext context){
     return Scaffold(
         backgroundColor: Colors.white,
          appBar: AppBar(
            title:Text('Login',
            style: TextStyle( color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30),
            ),
          leading: Text("=="),
            actions: <Widget>[
              
            ],

          ),
     );
   }


 }


