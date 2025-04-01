import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _MyOrders_State createState() => _MyOrders_State();
}

class _MyOrders_State extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Orders'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Container(
              height: 95.0,
              decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.only(
                  bottomRight: const Radius.circular(20.0),
                  bottomLeft: const Radius.circular(20.0),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('000- 3Alamein Court,Traralgon'),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue[600],
                    child: Center(
                      child:
                          Icon(Icons.keyboard_arrow_down, color: Colors.white),

                      /* FlatButton.icon(onPressed: (){},
                            icon:Icon(Icons.keyboard_arrow_down ,color: Colors.white),
                            padding: EdgeInsets.all(0.0),
                            label:Text('')),*/
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.blue[900], //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Data',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(10.0),
                bottomRight: const Radius.circular(10.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.blue[900], //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
              ),
            ),
            child: Row(
              children: [
                Text(
                  ' Data',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Data',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
