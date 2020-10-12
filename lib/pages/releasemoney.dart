import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';
import 'package:flutterapp2/pages/walletbalance.dart';


class ReleaseMoney extends StatefulWidget {
  @override
  _ReleaseMoneyState createState() => _ReleaseMoneyState();
}

class _ReleaseMoneyState extends State<ReleaseMoney> {

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[


              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      Container(
                          color: Colors.black,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Release Money', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[

                              Text("Amount :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                              Container(
                                child: TextField(
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Amount in INR',

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

                              Text("Reason :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                              Container(
                                child: TextField(
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    hintText: 'Describe Reason',

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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Checkbox(
                            value: _checkbox,
                            onChanged: (bool value)
                        {
                          setState(() {
                            _checkbox=value;
                          });
                        }
                        ),
                          Text('Bank Name(with Account No.)', style: TextStyle(color: Colors.black, fontSize: 13.0),)

                        ],
                      ),

                    ],
                  ),
                ),
              ),


              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WalletBal()),
                            );
                          },
                          color: Colors.black,
                          splashColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 16.0),)
                      ),
                    ],
                  ),
                ),
              )


            ],
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
