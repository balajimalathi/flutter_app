import 'package:flutter/material.dart';


class Date extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 21))),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _date = DateTime.now();
  static var date1 = DateTime.now();
  var customDate = "${date1.day}-${date1.month}-${date1.year}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_date == null
                ? 'Today'
                : "${date1.day.toString().padLeft(2, '0')}-${date1.month.toString().padLeft(2, '0')}-${date1.year.toString()}"),
            FilledButton.icon( 
              icon: Icon(Icons.calendar_today),
              label: Text('Pick Date'),

              onPressed: () {

                showDatePicker(
                    context: context,
                    initialDate: _date == null ? DateTime.now() : _date,
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2021))
                    .then((date) {
                  setState(() {

                    customDate =
                    "${date!.day.toString().padLeft(2, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.year.toString()}";
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}