import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';
import 'package:flutterapp2/pages/mycartnext.dart';


class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {


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

                                    Expanded(flex: 2,child: Container(child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),


                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[

                                            Icon(IconData(0xe800, fontFamily:'Icons',),size: 23.0, color: Colors.red,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Container(
                                                height: 33.0,
                                                width: 33.0,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black,// set border color
                                                      width: 1.0),   // set border width
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(5.0)), // set rounded corner radius
                                                ),
                                                child: Text('2', style: TextStyle(color: Colors.black, fontSize: 16.0), textAlign: TextAlign.center,),
                                              ),
                                            ),
                                            Icon(IconData(0xe802, fontFamily:'Icons',),size: 23.0, color: Colors.green,),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Row(
                                  children: <Widget>[

                                    Expanded(flex: 2,child: Container(child: Text('<Item_Category:(Meal)>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.normal),))),

                                    Expanded(flex: 1,
                                        child: Container(child: Text('Price:150/-', style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.normal), textAlign: TextAlign.center,))),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Row(
                                  children: <Widget>[
                                    Expanded(flex: 1,child: Container(child: Text('Delivery Date & Time: mm/dd/yyyy', style: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.normal),))),
                                  ],
                                ),


                                Row(
                                  children: <Widget>[
                                    Expanded(flex: 1,child: Container( padding: EdgeInsets.only(right: 20.0) ,child: Text('Rs. 300', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.end,))),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Expanded(flex: 1,child: Container(child: Text('Delivery Location: Gurgaon', style: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.normal),))),
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

                                    Expanded(flex: 2,child: Container(child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),


                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[

                                            Icon(IconData(0xe800, fontFamily:'Icons',),size: 23.0, color: Colors.red,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Container(
                                                height: 33.0,
                                                width: 33.0,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black,// set border color
                                                      width: 1.0),   // set border width
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(5.0)), // set rounded corner radius
                                                ),
                                                child: Text('2', style: TextStyle(color: Colors.black, fontSize: 16.0), textAlign: TextAlign.center,),
                                              ),
                                            ),
                                            Icon(IconData(0xe802, fontFamily:'Icons',),size: 23.0, color: Colors.green,),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Row(
                                  children: <Widget>[

                                    Expanded(flex: 2,child: Container(child: Text('<Item_Category:(Meal)>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.normal),))),

                                    Expanded(flex: 1,
                                        child: Container(child: Text('Price:150/-', style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.normal), textAlign: TextAlign.center,))),
                                  ],
                                ),

                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Row(
                                  children: <Widget>[
                                    Expanded(flex: 1,child: Container(child: Text('Delivery Date & Time: mm/dd/yyyy', style: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.normal),))),
                                  ],
                                ),


                                Row(
                                  children: <Widget>[
                                    Expanded(flex: 1,child: Container( padding: EdgeInsets.only(right: 20.0) ,child: Text('Rs. 300', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.end,))),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Expanded(flex: 1,child: Container(child: Text('Delivery Location: Gurgaon', style: TextStyle(color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.normal),))),
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
                
                
                
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      
                      Container(child: Text('Preferred Delivery Time :',style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold), textAlign: TextAlign.start,)),

                      Container(height: 30.0,
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        margin: EdgeInsets.only(top: 3.0),
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


                            Expanded(flex: 2,child: Container(child: Text('Select Time', style: TextStyle(color: Colors.black, fontSize: 15.0),))),
                            Expanded(flex: 1,child: Container( alignment: Alignment.centerRight,child: Icon(Icons.play_arrow, size: 20.0, color: Colors.black,))),



                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black,// set border color
                              width: 1.0),   // set border width
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0)), // set rounded corner radius
                        ),
                        child: Text('Total Amount (INR): 400', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                      ),



                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyCartNext()),
                            );
                          },
                          color: Colors.black,
                          splashColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Place Order', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                        ),
                      )



                    ],

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
