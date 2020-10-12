import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/bankdetail.dart';
import 'package:flutterapp2/pages/main_drawer.dart';



class AddMoney extends StatefulWidget {
  @override
  _AddMoneyState createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {

 // List<String> _checked = []; //["A", "B"];
  //String _picked = "Two";
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {


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
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Container(
                        color: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text('Add Money', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: <Widget>[

                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Text('Enter Amount :', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),),
                            ),
                          ),


                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,// set border color
                                    width: 1.0),   // set border width
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.0)), // set rounded corner radius
                              ),

                              child: Row(
                                children: <Widget>[

                                  Container(alignment: Alignment.centerLeft,child: Icon(IconData(0xe802, fontFamily: 'Iconsnew',),size: 20.0, color: Colors.black,)),

                                  Container(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text('15,000', style: TextStyle(color: Colors.black, fontSize: 16.0,),)
                                  )

                                ],
                              ),

                            ),
                          )


                        ],
                      ),
                    ),


                    Container(
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
                    )


                  ],

                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      color: Colors.white,
                      height: 40.0,
                      width: 200.0,
                      child: OutlineButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => BankDetail()),
                          );
                        },
                        borderSide: BorderSide(width: 1.0),
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        color: Colors.black,
                        child: Text('Proceed', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),),
                      ),
                    ),

                  ],

                ),
              ),
            ),





          ],
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
