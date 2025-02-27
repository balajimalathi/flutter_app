import 'package:flutter_app/Myproject/order.dart';
import 'package:flutter_app/setstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/chat.dart';
import 'package:flutter_app/sam.dart';

void main() {
  runApp(MyTog());
}

class MyTog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Orders(),
      ),
    );

    // TODO: implement build
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    alignment: Alignment.bottomRight,
                    icon: (_isFavorited
                        ? Icon(Icons.star)
                        : Icon(Icons.star_border)),
                    color: Colors.red[500],
                    onPressed: _toggleFavorite,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: SizedBox(
                      width: 18,
                      child: Container(
                        child: Text('$_favoriteCount'),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () => _selectDate(context),
                        icon: Icon(Icons.calendar_today_outlined),
                        label: Text(
                          'Calendar',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt),
                        label: Text('Camera')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
