import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyHomePage()
      ));
  // debugCheckHasOverlay(context)
}


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),

      ),
      body:GridView.count(
        crossAxisCount:3,
        crossAxisSpacing: 20,

        children: [
          Card(
            elevation: 50,


            child: Column(
                children: [
                  Image.asset("images/1.jpg"),
                ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Image.asset("images/1.jpg"),
              ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Image.asset("images/1.jpg"),
              ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Image.asset("images/1.jpg"),
              ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Image.asset("images/1.jpg"),
              ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Image.asset("images/1.jpg"),
              ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Image.asset("images/1.jpg"),
              ],



            ),
          ),
          Card(
            elevation: 50,


            child: Column(
              children: [
                Expanded(child: Image.asset("images/1.jpg")),
                FlatButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Space())

                      );


                    }, child: Text("test"), )
              ],



            ),
          ),
        ],
      ),

    );
  }
}

class Space  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
           child: Image(
              image: AssetImage("images/1.jpg"),
           ),


      ),


    );
  }
}


