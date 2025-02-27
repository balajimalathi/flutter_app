import 'package:flutter/material.dart';
import 'package:flutter_app/Myproject/bottomnav.dart';
import 'package:flutter_app/Myproject/order.dart';
import 'package:flutter_app/Myproject/register.dart';
import 'package:flutter_app/Myproject/orders1.dart';
import 'package:flutter_app/Myproject/order2.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Virtue Homes',
      theme: ThemeData(
        fontFamily: "ProximaNova",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RegState(),
    );
  }
}
