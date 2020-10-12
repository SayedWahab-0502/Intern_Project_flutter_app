import 'package:flutter/material.dart';
import 'package:flutterapp2/pages/about_us.dart';
import 'package:flutterapp2/pages/cancellation.dart';
import 'package:flutterapp2/pages/home_screen.dart';
import 'package:flutterapp2/pages/my_order.dart';
import 'package:flutterapp2/pages/my_reminder.dart';
import 'package:flutterapp2/pages/my_wallet.dart';
import 'package:flutterapp2/pages/privacy_policy.dart';



class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(
        children: <Widget>[
          Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5.0),
                  color: Color(0xFFB27409),


                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Icon(Icons.account_circle, color: Colors.white, size: 65.0,),

                        Padding(padding: EdgeInsets.only(left: 7.0),),

                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text('Login to unlock exclusive offers and discount', style: TextStyle(color: Colors.white, fontSize: 15.0),),
                              Container(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    OutlineButton(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),),
                                      onPressed: (){},
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),



                ListTile(
                  leading: Icon(IconData(0xe805, fontFamily: 'Appicon'), color: Colors.grey[850],size: 30.0,),
                  title: Text('Home', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),


                ListTile(
                  leading: Icon(IconData(0xe800, fontFamily: 'Appicon'), color: Colors.grey[850], size: 30.0,),
                  title: Text('My Orders', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyOrders()));
                  },
                ),

                ListTile(
                  leading: Icon(IconData(0xe804, fontFamily: 'Appicon'), color: Colors.grey[850],size: 30.0,),
                  title: Text('My Favourite', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                  },
                ),

                ListTile(
                  leading: Icon(IconData(0xe801, fontFamily: 'Appicon'), color: Colors.grey[850],size: 30.0,),
                  title: Text('My Reminder', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myreminder()));
                  },
                ),

                ListTile(
                  leading: Icon(IconData(0xe80B, fontFamily: 'Appicon'), color: Colors.grey[850], size: 30.0,),
                  title: Text('My Wallet', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyWallet()));

                  },
                ),

                ListTile(
                  leading: Icon(IconData(0xe807, fontFamily: 'Appicon'), color: Colors.grey[850], size: 30.0,),
                  title: Text('Cancellation', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cancellation()));
                  },
                ),

                ListTile(
                  leading: Icon(IconData(0xe808, fontFamily: 'Appicon'), color: Colors.grey[850], size: 30.0,),
                  title: Text('Privacy Policy', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  onTap: ()
                  {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                  },
                ),

                ListTile(
                    leading: Icon(
                      Icons.info_outline, size: 35.0,color: Colors.grey[850],
                    ),
                    title: Text('About Us', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                    onTap: ()
                    {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    }
                ),




              ],
            ),
          ),




        ],
      ),
    );
  }
}
