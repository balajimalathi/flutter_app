import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RLogin extends StatefulWidget {
  @override
  _RLogin createState() => _RLogin();
}

class _RLogin extends State<RLogin> {
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

          /*mainAxisAlignment: MainAxisAlignment.spaceEvenly,*/

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:30,top: 40),
              child: Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text('Welcome,',
                              style: TextStyle(
                                  fontSize: 29, fontWeight: FontWeight.bold)),
                        ),
                        Text('Sign in to continue!',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 22,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left:30, right:30,top: 100, bottom: 15),
              child: new TextFormField(
                decoration: new InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15.0),
                  labelText: "Email ID",
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
                    return "Email cannot be empty";
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
              margin: const EdgeInsets.only(left:30, right:30,top: 0, bottom: 10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Text('Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          fontSize: 14)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left:30, right:30,top: 50, bottom: 15),
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
            FlatButton.icon(
              icon:Icon(Icons.icecream,color: Colors.indigo,),
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
                        Text('Iam a new user, ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15)),
                        Text('Sign Up',
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
