import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Searching'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('New chat'),
        ),
        body:ListView.separated(
            separatorBuilder: (context, index) => Divider(

              color: Colors.blue,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context,int index){
              return ListTile(

                leading:
                Stack(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    Positioned(
                      right: 6,
                      bottom: 5,
                      child: Container(
                        width: 15,
                        height: 15,
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),


                trailing: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.check,
                      color: Colors.green),
                  label:
                  Text(
                    "21.05",
                    style: TextStyle(
                        color: Colors.black54),
                  ),
                ),


                title:Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5,bottom: 5),
                          child: Text('New Name',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                              'Hi, how are you, What are doing ?',
                              style: TextStyle(fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                ),

              );
            }

        ),
      );
    },
  ));
}



class Msg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Chats'),
        actions: <Widget>[

          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Searching',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
        ],
      ),
      body:ListView.separated(
          separatorBuilder: (context, index) => Divider(

            color: Colors.blue,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context,int index){
            return ListTile(

                leading:
                Stack(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    Positioned(
                      right: 6,
                      bottom: 5,
                      child: Container(
                        width: 15,
                        height: 15,
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),


                trailing:
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.check,
                      color: Colors.green),
                  label:
                  Text(
                    "21.05",
                    style: TextStyle(
                        color: Colors.black54),
                  ),
                ),
             /* */


                title:Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top:8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5,bottom: 5),
                          child: Text('Monisha',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600)),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                              'Hi, how are you, What are doing ?',
                              style: TextStyle(fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                ),

            );
          }

      ),

    );
  }
}
/*
Column(
                  children: [
                    Text('21.05'),
                  Container(

                  width: 20,
                  height: 20,
                  child: Text('  3',style: TextStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  ),

                  ],

              ),
   Container(
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.check,
                        color: Colors.green),
                    label:
                    Text(
                      "21.05",
                      style: TextStyle(
                          color: Colors.black54),
                    ),
                  ),
                ),


Column(
children: [
Container(
color: Colors.blue,
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.all(8.0),
child: Container(
width: 60,
height: 60,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Color(0xFFe0f2f1)),
),
),
Expanded(
child: Padding(
padding: const EdgeInsets.only(top:8,bottom: 8),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.only(top:5,bottom: 5),
child: Text('Monisha',
style: TextStyle(
fontSize: 17,
fontWeight: FontWeight.w600)),
),

Padding(
padding: const EdgeInsets.only(top:5,bottom: 5),
child: Text(
'Hi, how are you, and your family \nWhat are doing ?',
style: TextStyle(fontSize: 15)),
),
],
),
),
),
Container(

child: FlatButton.icon(
onPressed: () {},
icon: Icon(Icons.check,
color: Colors.green),
label: Text(
"21.05",
style: TextStyle(
color: Colors.black54),
),
),

),


],
),

),
],

),

ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context,int index){
                      return ListTile(
                          leading: Icon(Icons.list),
                          trailing: Text("GFG",
                            style: TextStyle(
                                color: Colors.green,fontSize: 15),),
                          title:Text("List item $index")
                      );
                    }
                ),
Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 80.0,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 35),
                  child: Text('Chats', style: TextStyle(fontSize: 25)),
                ),
              ),
            ),
            Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              ),
                              Positioned(
                                right: 3,
                                bottom: 5,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  padding: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Monisha',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600)),
                                        FlatButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.check,
                                              color: Colors.green),
                                          label: Text(
                                            "21.05",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                            'Hi, how are you, and your family \nWhat are doing ?',
                                            style: TextStyle(fontSize: 15))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        // height: 1,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),*/
