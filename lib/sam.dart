
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Mor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Stack Widget Example"),
          ),
          body: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                color: Colors.black54,
              ),
              width: 380,
              height: 700,

              child: Stack(
               children: <Widget> [
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                   ),
                   width: 380,
                   height: 400,

                 ),   Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.indigo,
                   ),
                   width: 380,
                   height: 50,

                 ),
                 Opacity(
                   opacity: 1,
                   child: Container(
                     margin: EdgeInsets.only(top: 40),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.blue,
                     ),
                     width: 380,
                     height: 100,

                   ),
                 ),


               ],
              ),
            ),

          )
      ),
    );
  }
}
/*
child: Stack(
fit: StackFit.passthrough,
overflow: Overflow.visible,
children: <Widget>[
// Max Size Widget
Container(

height: 300,
width: 400,
color: Colors.green,
child: Center(
child: Text(
'Top Widget: Green',
style: TextStyle(color: Colors.white, fontSize: 20),
),
),
),
Positioned(
top: 30,
right: 20,
child: Container(
height: 100,
width: 150,
color: Colors.blue,
child: Center(
child: Text(
'Middle Widget',
style: TextStyle(color: Colors.white, fontSize: 20),
),
),
),
),
Positioned(
top: 30,
left: 20,
child: Container(
height: 100,
width: 150,
color: Colors.orange,
child: Center(
child: Text(
'Bottom Widget',
style: TextStyle(color: Colors.white, fontSize: 20),
),
),
)
),
],
),*/
