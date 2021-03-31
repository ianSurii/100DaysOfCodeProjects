
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

 class Login extends StatelessWidget{

   Widget build(BuildContext context){
     return Scaffold(
         // // backgroundColor: Colors.white,
         //  appBar: AppBar(
         //  //   title:Text('TOURER',
         //  //   textAlign: TextAlign.center,
         //  //   style: TextStyle( color: Colors.white,
         //  //       fontWeight: FontWeight.w500,
         //  //       fontSize: 30),
         //  //   ),
         //  // leading: Text("==",
         //  // style:TextStyle(color: Colors.blueAccent,
         //  //     fontWeight: FontWeight.w500,
         //  //     fontSize: 30)),
         //  //
         //  //   actions: <Widget>[
         //  //
         //  //   ],
         //
         //  ),

     body: Body(),
     );

   }


 }
class Body extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;

// _BodyController =controll
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sample App'),
      //   backgroundColor:Colors.blueAccent,
      //
      //   // child:TextField(
      //   //
      //   ),
        // TextField()
      body: Padding(
        padding: EdgeInsets.only(
            top:size.height*0.1),
        child: Stack(
          children:<Widget> [
            Container(
              width: size.width,
              height: size.height*0.1,
              child: Text("TOURER",
                style: TextStyle(
                  fontSize:30.0,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),
                textAlign: TextAlign.center,

              ),
            ),

            Container(
              padding: EdgeInsets.only(
                  top:size.height*0.1),
              width: double.infinity,
              height: size.height,
              margin: EdgeInsets.only(
                top:size.height*0.05,
                left: 10.0,
                right:10.0,
                bottom: size.height*0.07,
              ),

              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              child: Stack(

              children: <Widget>[
                Container(


                  width: size.width,
                  height:double.infinity,

                  child: Text("LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize:25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,

                  ),
                  ),
                ),
                Container(
                  height: size.height*0.30,
                  padding:EdgeInsets.only(
                      top:30.0,
                      left:10.0,
                  ),
                  child: Text("Username",
                    textAlign: TextAlign.left,
                    style: TextStyle(

                      fontSize:15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,

                    ),
                  ),

                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(0),
                  width:size.width,
                  height: size.height*0.30,
                  color: Colors.white60,
                  child: TextField(

                     keyboardType: TextInputType.emailAddress,
                      cursorColor:Colors.red,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),

                  ),
                ),


                // Container(
                //   height: size.height*0.30,
                //   padding:EdgeInsets.only(
                //     top:size.height*0.01,
                //     left:10.0,
                //   ),
                //   child: Text("Password",
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //
                //       fontSize:15.0,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.blue,
                //
                //     ),
                //   ),
                //
                // ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top:size.height*0.01,
                    left:10,
                    right:10,

                  ),
                  width:size.width,
                  height: double.infinity,
                  color: Colors.white60,
                  child: TextField(

                    keyboardType: TextInputType.visiblePassword,
                    cursorColor:Colors.red,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),

                  ),
                )



              ],

              ),



            ),
            Container(
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Login'),
                onPressed: () {
                  Home();
                  // var ;
                  // print(.text);
                  // print(passwordController.text);
                },
              ),
            )
          ],


    ),
    ),
    );

  }

}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


}

