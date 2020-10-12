import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';



class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {

    showAlertDialog(BuildContext context) {

      // set up the button
      Widget okButton = FlatButton(
        splashColor: Colors.white,
        child: Text("OK", style: TextStyle(color: Colors.black),),
        onPressed: () {
          Navigator.pop(context);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Order Confirmation"),
        content: Text("Your order placed successfully"),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }



    return Scaffold(

      backgroundColor: Color(0xFFFDEFD3),

      appBar: AppBar(

        backgroundColor: Color(0xFFD38A0E),

        title: Row(
          children: <Widget>[

            Container(
              child: Row(
                children: <Widget>[

                  CircleAvatar(
                    backgroundColor: Color(0xFF000000),
                    radius: 20.0,
                    child: Image(
                      image: AssetImage(logo), fit: BoxFit.cover, height: 35.0, width: 35.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 5.0),),
                  Text('MEAL MANIA', style: TextStyle(color: Colors.white, fontSize: 16.0),)
                ],
              ),
            ),

          ],
        ),


        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new,color: Colors.white,),
            onPressed: () {},
          ),
        ],
      ),

      drawer: MainDrawer(),

      body: Container(
        child: SingleChildScrollView(


          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('Payment', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ),


                Container(margin: EdgeInsets.symmetric(vertical: 10.0),alignment: Alignment.center,child: Text('Wallet Balance', style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),)),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                  Icon(IconData(0xe802, fontFamily: 'Iconsnew',),size: 25.0, color: Color(0xFFD38A0E),),

                    Container(margin: EdgeInsets.only(left: 3.0),child: Text('15,000', style: TextStyle(color: Color(0xFFD38A0E), fontSize: 16.0),))
                  ],
                ),


                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[


                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Checkbox(
                              value: _checkbox,
                              onChanged: (bool value){
                                setState(() {
                                  _checkbox=value;
                                });
                              }
                          ),

                          Text('Pay using Wallet', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Checkbox(
                              value: _checkbox,
                              onChanged: (bool value){
                                setState(() {
                                  _checkbox=value;
                                });
                              }
                          ),

                          Text('Pay using Credit Card', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Checkbox(
                              value: _checkbox,
                              onChanged: (bool value){
                                setState(() {
                                  _checkbox=value;
                                });
                              }
                          ),

                          Text('Pay using Debit Card', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Checkbox(
                              value: _checkbox,
                              onChanged: (bool value){
                                setState(() {
                                  _checkbox=value;
                                });
                              }
                          ),

                          Text('Pay using Net Banking', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Checkbox(
                              value: _checkbox,
                              onChanged: (bool value){
                                setState(() {
                                  _checkbox=value;
                                });
                              }
                          ),

                          Text('Pay using UPI / Wallet', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                        ],
                      ),

                    ],
                  ),
                ),



                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: RaisedButton(
                      onPressed: () {
                        showAlertDialog(context);
                      },
                    child: Text('Proceed', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),),
                    color: Colors.lightBlue,
                      ),
                )


              ],
            ),
          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,

          items: [
            BottomNavigationBarItem(
                icon: Icon(IconData(0xe801, fontFamily: 'Appiconnew'), color: Color(0xFFD38A0E), size: 26.0,),
                title: Text('Home', style: TextStyle(color: Colors.black,),)
            ),

            BottomNavigationBarItem(
                icon: Icon(IconData(0xe803, fontFamily: 'Appicon'), color: Color(0xFFD38A0E), size: 26.0,),
                title: Text('Favourite', style: TextStyle(color: Colors.black,),)
            ),


            BottomNavigationBarItem(
                icon: Icon(IconData(0xe800, fontFamily: 'Appiconnew'), color: Color(0xFFD38A0E), size: 26.0,),
                title: Text('Orders', style: TextStyle(color: Colors.black,),)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Color(0xFFD38A0E), size: 26.0,),
                title: Text('Cart', style: TextStyle(color: Colors.black,),)
            ),


            BottomNavigationBarItem(
                icon: Icon(IconData(0xe80A, fontFamily: 'Appicon'), color: Color(0xFFD38A0E), size: 26.0,),
                title: Text('User Profile', style: TextStyle(color: Colors.black,),)
            ),
          ]
      ),

    );



  }
}
