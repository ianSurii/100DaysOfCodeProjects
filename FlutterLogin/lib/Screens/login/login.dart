
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';

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
return Scaffold(
  body:  SafeArea(

    child: Column(

       
        children: <Widget>[


          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(

                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:Colors.transparent,
                ),




                    child: Text("TOURER",
                      style: TextStyle(

                        fontSize: 30,
                        color:Colors.white ,
                        fontWeight: FontWeight.bold,


                      ),



                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:Colors.white,

                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)

                      ),
                  ),


                  child:   TextField(

                    obscureText: true,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),

                  ),



                ),

                Container(
                  padding: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)

                    ),
                    color:Colors.white,
                  ),


                  child:   TextField(

                    obscureText: true,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),



                ),
                Container(
                    height: 20,
                    width:  size.width/2,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        // print(nameController.text);
                        // print(passwordController.text);
                      },
                    )),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.white,
                  child: Text('Forgot Password'),
                ),
              ],
            ),
          ),


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

