import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';


class MyRefund extends StatefulWidget {
  @override
  _MyRefundState createState() => _MyRefundState();
}

class _MyRefundState extends State<MyRefund> {
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
        child: SingleChildScrollView(


          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                    color: Colors.black,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text('My Refunds', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),)
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child: Container(
                    child: Column(
                      children: <Widget>[

                        Card(
                          elevation : 5,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.grey[100],
                            child: Column(
                              children: <Widget>[

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 2,
                                        child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),)),

                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(IconData(0xe804, fontFamily: 'Icons',), color: Colors.black, size: 30.0,),
                                      ),
                                    )
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),

                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 1,
                                      child: Container(
                                          child: Text('<Order_Date>',
                                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),)),
                                      ),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[

                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            alignment: Alignment.bottomLeft,
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text('Quantity', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),))),

                                    Expanded(flex: 1,
                                        child: Container(
                                            alignment: Alignment.bottomRight,
                                            child: Text('Rs. <XXX>', textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),))),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),


                        Card(
                          elevation : 5,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.grey[100],
                            child: Column(
                              children: <Widget>[

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 2,
                                        child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),)),

                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(IconData(0xe805, fontFamily: 'Icons',), color: Colors.black, size: 30.0,),

                                      ),
                                    )
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),

                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: Text('<Order_Date>',
                                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),)),
                                    ),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[

                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            alignment: Alignment.bottomLeft,
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text('Quantity', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),))),

                                    Expanded(flex: 1,
                                        child: Container(
                                            alignment: Alignment.bottomRight,
                                            child: Text('Rs. <XXX>', textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),))),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),

                        Card(
                          elevation : 5,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.grey[100],
                            child: Column(
                              children: <Widget>[

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 2,
                                        child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),)),

                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(IconData(0xe804, fontFamily: 'Icons',), color: Colors.black, size: 30.0,),
                                      ),
                                    )
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),

                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: Text('<Order_Date>',
                                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),)),
                                    ),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[

                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            alignment: Alignment.bottomLeft,
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text('Quantity', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),))),

                                    Expanded(flex: 1,
                                        child: Container(
                                            alignment: Alignment.bottomRight,
                                            child: Text('Rs. <XXX>', textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),))),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),


                        Card(
                          elevation : 5,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.grey[100],
                            child: Column(
                              children: <Widget>[

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        flex: 2,
                                        child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),)),

                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(IconData(0xe805, fontFamily: 'Icons',), color: Colors.black, size: 30.0,),

                                      ),
                                    )
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),

                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: Text('<Order_Date>',
                                            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),)),
                                    ),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 5.0),),
                                Row(
                                  children: <Widget>[

                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            alignment: Alignment.bottomLeft,
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text('Quantity', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),))),

                                    Expanded(flex: 1,
                                        child: Container(
                                            alignment: Alignment.bottomRight,
                                            child: Text('Rs. <XXX>', textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),))),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),


                      ],

                    ),

                  ),
                ),




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
