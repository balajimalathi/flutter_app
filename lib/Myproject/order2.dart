import 'package:flutter/material.dart';

class Orders2 extends StatefulWidget {
  @override
  _MyOrders2_State createState() => _MyOrders2_State();
}

class _MyOrders2_State extends State<Orders2> {
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
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Container(
              height: 120.0,
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Text(
                        'Order Title',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 25,
                    margin: EdgeInsets.all(12.0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.bookmark_border_outlined,
                              color: Colors.blue.shade900, size: 30),
                          Icon(Icons.settings_outlined,
                              color: Colors.blue.shade900, size: 30),
                          Icon(Icons.share_outlined,
                              color: Colors.blue.shade900, size: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8, left: 8, right: 8),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.book_outlined,
                    color: Colors.blue.shade900, size: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Datartyrjuty'),
                    Text('Dadjguyruygta'),
                    Text('ryrtjgyjghjkrData'),
                    Text('eehgrstDartertta'),
                    Text('Drhsrhrhata'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 1.0,
              width: 375.0,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Datartyrjuty'),
                    Text('Dadjguyruygfghghfghta'),
                    Text('ryrtjgyjghfghfgjngfjjkrData'),
                    Text('eehgrstDarfhfhfrhrdgrthrrtertta'),
                    Text('Drhsrhrhata'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 375.0,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Datartyrjuty'),
                              Text('Dadjguyruygta'),
                              Text('ryrtjgyjghjkrData'),
                              Text('eehgrstDartertta'),
                              Text('Drhsrhrhata'),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Container(
                                  height: 1.0,
                                  width: 375.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
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
