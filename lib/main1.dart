import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/chat.dart';

/*import 'package:flutter_app/Myproject/Mytoggle.dart';*/
import 'package:flutter_app/rk.dart';
import 'package:flutter_app/sam.dart';
import 'package:flutter_app/setstate.dart';


void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(

        ),

      ),
    );

  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(

              children: <Widget>[
                Container(
                  child: Row(

                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left:30,top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Create Account,',
                                style: TextStyle(
                                    fontSize: 29, fontWeight: FontWeight.bold)),
                            Text('Sign up to continue!',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                /* Mine()*/
                Container(
                  margin: const EdgeInsets.only(top: 80,left:30,right:30, bottom: 15),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15.0),
                      labelText: "Full Name",
                      fillColor: Colors.white,

                      focusedBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        borderSide:
                        const BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Name cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left:30,right:30,bottom: 15),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(left: 25.0),
                      labelText: "Email ID",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        borderSide:
                        const BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Email ID cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0,left:30,right:30, bottom: 10),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.only(left: 25.0),
                      labelText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        borderSide:
                        const BorderSide(color: Colors.pinkAccent, width: 2.0),
                      ),
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                        borderSide: new BorderSide(),
                      ),
                      //fillColor: Colors.green
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Password cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 15),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: new LinearGradient(
                      colors: [Colors.pinkAccent, Colors.orangeAccent],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                    ),
                  ),
                  child: FlatButton(
                    /*color: Colors.pinkAccent,*/
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(15.0),
                    splashColor: Colors.blueAccent,
                    minWidth: 320,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    onPressed: () {
                      /*...*/
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                ),
                Container(


                ),

                FlatButton.icon(
                  icon:Icon(Icons.icecream,color: Colors.indigo),
                  color: Colors.black12,
                  textColor: Colors.blue,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(15.0),
                  splashColor: Colors.blueAccent,
                  minWidth: 320,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  onPressed: () {},
                  label: Text(
                    " Connect with Facebook",
                    style: TextStyle(color: Colors.indigo, fontSize: 17.0),
                  ),


                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only( bottom:70),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Iam already a member, ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15)),
                            Text('Sign In',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, color: Colors.pinkAccent)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






