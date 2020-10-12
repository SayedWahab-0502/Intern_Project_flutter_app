import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/addmodifyreminder.dart';
import 'package:flutterapp2/pages/main_drawer.dart';


class Myreminder extends StatefulWidget {
  @override
  _MyreminderState createState() => _MyreminderState();
}

class _MyreminderState extends State<Myreminder> {

  bool status = false;

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
                    child: Text('My Reminder', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ),


                Container(
                  margin:  EdgeInsets.symmetric(vertical: 15.0,),
                  child: Column(
                    children: <Widget>[


                      Container(
                        child: Column(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.all(8.0),
                              color: Colors.grey[100],
                              child: Row(
                                children: <Widget>[

                                  Expanded(flex: 3,child: Container(child: Text('Breakfast', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.bold,),))),

                                  Expanded(flex: 1,child: Container( alignment: Alignment.centerRight,child: Icon(Icons.play_arrow,size: 23.0, color: Colors.black,)))
                                ],
                              ),
                            ),


                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                              child: Row(
                                children: <Widget>[

                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('S', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFD38A0E),
                                      radius: 22.0,
                                      child: Text('M', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),

                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('T', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFD38A0E),
                                      radius: 22.0,
                                      child: Text('W', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('T', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('F', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('S', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                              children: <Widget>[

                                Icon(IconData(0xe804, fontFamily: 'Icons',), color: Colors.black, size: 23.0,),
                                
                                Container(margin: EdgeInsets.only(left: 3.0), child: Text('5:45 AM', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold ),))

                              ],
                            ),
                            ),


                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                children: <Widget>[

                                  FlutterSwitch(
                                    width: 85.0,
                                    height: 32.0,
                                    toggleSize: 40.0,
                                    value: status,
                                    borderRadius: 30.0,
                                    showOnOff: false,

                                    activeColor: Colors.green,
                                    inactiveColor: Colors.grey,
                                    toggleColor: Colors.white,
                                    onToggle: (val)
                                    {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),
                                  
                                  
                                  Container(margin: EdgeInsets.only(left: 3.0),child: Text('On / Off', style: TextStyle(color: Colors.black, fontSize: 16.0),))


                                ],
                              ),
                            ),




                            Container(
                              margin: EdgeInsets.only(top: 20.0),
                              color: Colors.black,
                              height: 1.0,
                              width: double.infinity,
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              color: Colors.black,
                              height: 1.0,
                              width: double.infinity,
                            ),


                          ],
                        ),
                      ),



                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.all(8.0),
                              color: Colors.grey[100],
                              child: Row(
                                children: <Widget>[

                                  Expanded(flex: 3,child: Container(child: Text('Lunch', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.bold,),))),

                                  Expanded(flex: 1,child: Container( alignment: Alignment.centerRight,child: Icon(Icons.play_arrow,size: 23.0, color: Colors.black,)))
                                ],
                              ),
                            ),


                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                              child: Row(
                                children: <Widget>[

                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('S', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFD38A0E),
                                      radius: 22.0,
                                      child: Text('M', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),

                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('T', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFD38A0E),
                                      radius: 22.0,
                                      child: Text('W', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('T', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('F', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22.0,
                                      child: Text('S', style: TextStyle(color: Colors.white),),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: <Widget>[

                                  Icon(IconData(0xe804, fontFamily: 'Icons',), color: Colors.black, size: 23.0,),

                                  Container(margin: EdgeInsets.only(left: 3.0), child: Text('1:30 PM', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold ),))

                                ],
                              ),
                            ),


                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                children: <Widget>[

                                  FlutterSwitch(
                                    width: 85.0,
                                    height: 32.0,
                                    toggleSize: 40.0,
                                    value: status,
                                    borderRadius: 30.0,
                                    showOnOff: false,

                                    activeColor: Colors.green,
                                    inactiveColor: Colors.grey,
                                    toggleColor: Colors.white,
                                    onToggle: (val)
                                    {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),


                                  Container(margin: EdgeInsets.only(left: 3.0),child: Text('On / Off', style: TextStyle(color: Colors.black, fontSize: 16.0),))


                                ],
                              ),
                            ),



                            Container(
                              margin: EdgeInsets.only(top: 20.0),
                              color: Colors.black,
                              height: 1.0,
                              width: double.infinity,
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              color: Colors.black,
                              height: 1.0,
                              width: double.infinity,
                            ),


                          ],
                        ),
                      ),




                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.all(8.0),
                              color: Colors.grey[100],
                              child: Row(
                                children: <Widget>[

                                  Expanded(flex: 3,child: Container(child: Text('Dinner', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.bold,),))),

                                  Expanded(flex: 1,child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AddModify()),
                                        );
                                      },
                                      child: Container( alignment: Alignment.centerRight,child: Icon(Icons.play_arrow,size: 23.0, color: Colors.black,))))
                                ],
                              ),
                            ),




                          ],
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
