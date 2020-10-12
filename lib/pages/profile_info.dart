import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/home_screen.dart';


class Profileinfo extends StatefulWidget {
  @override
  _ProfileinfoState createState() => _ProfileinfoState();
}

class _ProfileinfoState extends State<Profileinfo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                
                
                Container(
                  child: Text("Profile Information", style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),


                Container(
                  alignment: Alignment.center,
                  child: Image.asset(profile, fit: BoxFit.contain,width: 140.0, height: 140.0,),
                ),



                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      Text("Name :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                      Container(
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Enter you name',

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

                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                            Text("E-Mail Id :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                          Container(
                            child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'user@domain.com (pre-filled)',

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

                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      Text("Mobile No :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),

                      Container(
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: '+91 - (Enter 10 digit number)',

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

                Container(
                  margin: EdgeInsets.only(top: 20.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: <Widget>[

                         Text("Address for Delivery", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),

                       Container(
                         margin: EdgeInsets.only(top: 5.0),
                         height: 45.0,
                         child: TextField(
                          decoration: InputDecoration(
                           prefixIcon: Icon(Icons.search, color: Colors.black,),
                           suffixIcon: Icon(Icons.location_on, color: Colors.black,),
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.black,),
                             borderRadius: BorderRadius.all(Radius.circular(5.0)),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.black,),
                             //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                           ),
                         ),
                         style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal),
                         cursorColor: Colors.black,
                         keyboardType: TextInputType.text,
                       ),
                       ),
              ],
            ),
                ),




                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: <Widget>[
                         Container(
                           height: 100.0,
                           child: Image.asset(map,fit: BoxFit.cover,),),
                       ],
                     ),
                   ),

                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  width: 200,
                  height: 45,
                  child: FlatButton(

                    onPressed: () {
                      Navigator.push(
                          context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                    },

                    child: Text("GO", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    color: Colors.black,
                    splashColor: Colors.white,
                  ),
                ),

              ],
            ),
          ),


        ),
      ),
    );
  }
}
