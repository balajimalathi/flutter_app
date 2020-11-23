import 'package:flutter/material.dart';

class RegState extends StatefulWidget {
  const RegState({ Key key }) : super(key: key);

  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<RegState> {
/*  String email;
  String username;
  String password;*/
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Third text field: ${myController.text}");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Registration',
      home: Scaffold(
        appBar: AppBar(
          leading:Icon(Icons.arrow_back),
          title: const Text('Registration'),
          actions:[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(
                  Icons.search,
                ),
                Icon(
                  Icons.bookmark_outlined,
                ),
                Icon(
                  Icons.more_vert,

                ),
              ],
            ),
          ],
        ),
        body:
        Form(
        key: _formKey,
        child:Center(
          child:
          SingleChildScrollView(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget>[
                SizedBox(

                  height:
                  10,
                ),
                CircleAvatar(
                  backgroundColor:Colors.blue,
                  radius:50,
                  child:Icon(Icons.person, color:Colors.white ,size:40),


                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical:16,horizontal:16),
                  child:Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:16,horizontal:16),
                  child:TextFormField(
                    onChanged: (text) {
                      print("First text field: $text");
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Username';
                      }
                      return null;
                    },
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.person),
                      labelText:('Username'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color:Colors.blue,


                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),),
                    ),

                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical:16,horizontal:16),
                  child:TextFormField(
                    onChanged: (text) {
                      print("Second text field: $text");
                    },

                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.email),
                      labelText:('Email'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color:Colors.blue,

                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),),
                    ),
                   ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:16,horizontal:16),
                  child:TextFormField(
                    controller: myController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.security),
                      labelText:('Password'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color:Colors.blue,

                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),),
                    ),


                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:16,horizontal:16),
                  child: MaterialButton(
                    child:Text('Register',style:TextStyle(color:Colors.white),),
                    color: Colors.blue,
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                      }
                    },
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
/*

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}*/
