import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';



class WalletBal extends StatefulWidget {
  @override
  _WalletBalState createState() => _WalletBalState();
}

class _WalletBalState extends State<WalletBal> {
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
              children: <Widget>[

                Container(
                    child: Row(
                      children: <Widget>[


                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(flex: 1,child: Container(child: Text('Wallet Balance :', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),))),
                                Expanded(flex: 1,child: Container(child: Text('₹ 1500', style: TextStyle(color: Colors.white, fontSize: 16.0,),textAlign: TextAlign.center,)))
                              ],
                            ),
                          ),
                        ),
                        
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 3.0,),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,// set border color
                                    width: 1.0),   // set border width
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.0)), // set rounded corner radius
                              ),

                              child: Icon(IconData(0xe801, fontFamily: 'Icons',),size: 30.0, color: Colors.black,),

                            ),
                          ),
                        )

                      ],

                    ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[


                        Container(margin: EdgeInsets.symmetric(vertical: 5.0),alignment: Alignment.centerLeft,child: Text('Transaction History :', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),)),


                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          child: Column(
                            children: <Widget>[


                              Container(
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),


                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),


                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),


                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Column(
                                  children: <Widget>[

                                    Row(
                                      children: <Widget>[
                                        Expanded(flex: 2,child: Container(child: Text('Item Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),))),

                                        Expanded(flex: 1,child: Container(child: Text('₹ 200 Cr.', style: TextStyle(color: Colors.black,),)))
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 20.0),),
                                        Expanded(flex: 1,child: Container(child: Text('Quantity : 2', style: TextStyle(color: Colors.black, fontSize: 12.0,),))),
                                        Expanded(flex: 2,child: Container(child: Text('Date : mm/dd/yyy.', style: TextStyle(color: Colors.black, fontSize: 12.0),))),
                                      ],
                                    )

                                  ],
                                ),
                              ),

                            ],
                          ),
                        )


                      ],
                    ),

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
