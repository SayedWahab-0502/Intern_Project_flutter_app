import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';
import 'package:flutterapp2/pages/releasemoney.dart';


class BankDetail extends StatefulWidget {
  @override
  _BankDetailState createState() => _BankDetailState();
}

class _BankDetailState extends State<BankDetail> {
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
                    child: Text('Bank Detail', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,),
                  child: Container(
                    child: Column(
                      children: <Widget>[



                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text("Full Name (as per Bank Records) :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                                Container(
                                  child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your Name',

                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),


                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text("Bank Name :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                                Container(
                                  child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Bank name',

                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text("Branch Name :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                                Container(
                                  child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Bank-Branch Name',

                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text("IFSC CODE :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                                Container(
                                  child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Bank IFSC Code',

                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text("Branch Address :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                                Container(
                                  child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Branch Address',

                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text("Account Number :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                                Container(
                                  child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your Account Number',

                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),


                        Container(
                          width: double.infinity,
                          height: 40.0,
                          margin: EdgeInsets.only(top: 30.0),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ReleaseMoney()),
                              );
                            },
                            color: Colors.black,
                            splashColor: Colors.white,
                            child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                          ),
                        )


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
