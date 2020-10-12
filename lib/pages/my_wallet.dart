import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/addmoney.dart';
import 'package:flutterapp2/pages/main_drawer.dart';


class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
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
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('My Wallet', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child: Container(
                    child: Column(
                      children: <Widget>[


                        Text('Available Balance ', style: TextStyle(color: Colors.black, fontSize: 18.0, decoration: TextDecoration.underline),),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 8.0),
                          padding: EdgeInsets.all(3.0),
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
                              
                              Expanded(flex: 1, child: Container(alignment: Alignment.centerLeft,child: Icon(IconData(0xe802, fontFamily: 'Iconsnew',),size: 24.0, color: Colors.black,))),
                              
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20.0),
                                   child: Text('15,000', style: TextStyle(color: Colors.black, fontSize: 16.0,),)
                                ),
                              )

                            ],
                          ),
                        ),


                        Container(
                          child: RaisedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AddMoney()),
                                );

                              },
                              splashColor: Colors.white,
                              color: Colors.black,
                              icon: Icon(IconData(0xe801, fontFamily: 'Icons',),size: 28.0, color: Colors.white,) ,
                              label: Text('Add Money', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.normal ),))
                        ),


                        Container(margin: EdgeInsets.symmetric(vertical: 5.0),alignment: Alignment.centerLeft,child: Text('Transaction History :', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),)),


                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
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
                                margin: EdgeInsets.only(top: 10.0),
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
                                margin: EdgeInsets.only(top: 10.0),
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
                                margin: EdgeInsets.only(top: 10.0),
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
                                margin: EdgeInsets.only(top: 10.0),
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
                                margin: EdgeInsets.only(top: 10.0),
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
