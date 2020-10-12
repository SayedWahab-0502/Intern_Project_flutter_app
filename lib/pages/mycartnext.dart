import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';
import 'package:flutterapp2/pages/payment.dart';


class MyCartNext extends StatefulWidget {
  @override
  _MyCartNextState createState() => _MyCartNextState();
}

class _MyCartNextState extends State<MyCartNext> {
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
                    child: Text('My Cart', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: <Widget>[
                      
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            color: Colors.white,
                            width: 100.0,

                            child: Row(
                              children: <Widget>[

                                Expanded(flex: 2,child: Container(child: Text('Select Address', style: TextStyle(color: Colors.black, fontSize: 13.0),))),
                                Expanded(flex: 1,child: Container(alignment: Alignment.centerRight, child: Icon(Icons.play_arrow, size: 20.0, color: Colors.black,)))
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      Expanded(flex: 1,child: Container(child: IconButton(icon: Icon(Icons.add_circle, color: Color(0xFFD38A0E), size: 40.0),splashColor: Colors.white, onPressed: (){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payment()),
                        );
                      }
                      ),
                      )
                      ),

                    ],
                  ),
                ),


                Container(
                  child: Column(
                    children: <Widget>[

                      Card(
                        elevation : 5,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          color: Colors.grey[100],
                          child: Column(
                            children: <Widget>[

                              Row(
                                children: <Widget>[

                                  Expanded(flex: 2,child: Container(child: Text('Shipping Details', style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),))),


                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Icon(IconData(0xe802, fontFamily:'Iconsnewone',),size: 23.0, color: Colors.black,),
                                    ),
                                  ),
                                ],
                              ),

                              Padding(padding: EdgeInsets.only(top: 8.0),),
                              Row(
                                children: <Widget>[

                                  Expanded(flex: 1,child: Container(child: Text('Street <Address>', style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.normal),))),

                                ],
                              ),

                              Padding(padding: EdgeInsets.only(top: 8.0),),
                              Row(
                                children: <Widget>[
                                  Expanded(flex: 1,child: Container(child: Text('City <Address> State <Address>', style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.normal),))),
                                ],
                              ),


                              Padding(padding: EdgeInsets.only(top: 8.0),),
                              Row(
                                children: <Widget>[
                                  Expanded(flex: 1,child: Container(child: Text('Landmark <Address> PinCode : ****** ', style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.normal),))),
                                ],
                              ),

                            ],
                          ),
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
