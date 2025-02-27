/*
import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        body: Container(
          color: Colors.amber,
    ),
    ),
    );

  }

}

*/
import 'package:flutter/material.dart';
class Nav extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
 
/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){},
          color: Colors.white,
        ),
        title: const Text('Sample'),
        backgroundColor:Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,

            children: [

              Column(

                children: [
                  Text('Sample Text',style: TextStyle(fontSize: 20),)
                ],
              ),
              Column(
                children: [
                TextButton.icon(onPressed: (){}, icon: Icon(Icons.cake,
                    color: Colors.green), label: Text(''),)

                ],

              ),
            ],
          ),
        ),

      )
    );
  }
}

