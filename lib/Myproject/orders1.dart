import 'package:flutter/material.dart';

class Orders1 extends StatefulWidget {

      @override
  _MyOrders1_State createState()=> _MyOrders1_State();
}
class _MyOrders1_State extends State<Orders1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
          },
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
            padding: const EdgeInsets.only(bottom:14),
            child: Container(
              height:95.0,
              decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.only(
                  bottomRight:  const  Radius.circular(20.0),
                  bottomLeft: const  Radius.circular(20.0),

                ),

              ),
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child:Text('000- 3Alamein Court,Traralgon',style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600),),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.all(9.0),
                    color: Colors.blue[600],
                    child:Center(
                      child: Icon(Icons.keyboard_arrow_down ,color: Colors.white),

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

          Padding(
            padding: const EdgeInsets.only(top:8.0,left: 8,right: 8),
            child: Container(

              padding: EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.only(
                  bottomRight:  const  Radius.circular(10.0),
                  bottomLeft: const  Radius.circular(10.0),
                  topRight:  const  Radius.circular(10.0),
                  topLeft: const  Radius.circular(10.0),


                ),
              ),

              child: Row(
                children: [Text('Title')],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              padding: EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: new BorderRadius.only(
                  bottomRight:  const  Radius.circular(10.0),
                  bottomLeft: const  Radius.circular(10.0),
                  topRight:  const  Radius.circular(10.0),
                  topLeft: const  Radius.circular(10.0),


                ),
              ),

              child: Row(
                children: [Text('Description')],
              ),
            ),
          ),
          Prd(
            hint: "r",
            label: "r",
          ),
          Prd(
            hint: "r",
            label: "r",
          ),
          Prd(
            hint: "r",
            label: "r",
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: new BoxDecoration(
              color: Colors.blue[800], //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
              bottomRight:  const  Radius.circular(10.0),
              bottomLeft: const  Radius.circular(10.0),
              topRight:  const  Radius.circular(10.0),
              topLeft: const  Radius.circular(10.0),

              ),
            ),

            child: Padding(

              padding: const EdgeInsets.only(top:8,bottom: 8,left: 16,right: 16),
              child: Text('  Done  ',style: TextStyle(fontSize: 14,color: Colors.white),),

            ),
          ),

        ],
      ),

    );

  }
}
class Prd extends StatelessWidget {
  final String label, hint;
  const Prd({
    Key key,
    this.label,
    this.hint,

  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:2,bottom: 1,left: 8),
          child: Row(

            children: [
             Text(label)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            padding: EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.only(
                bottomRight:  const  Radius.circular(10.0),
                bottomLeft: const  Radius.circular(10.0),
                topRight:  const  Radius.circular(10.0),
                topLeft: const  Radius.circular(10.0),


              ),
            ),

            child: Row(
              children: [Text(hint)],
            ),
          ),
        ),
      ],
    );
  }
}
