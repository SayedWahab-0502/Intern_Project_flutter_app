import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/sign_in_otp.dart';


// ignore: camel_case_types
class Sign_in extends StatefulWidget {
  @override
  _Sign_inState createState() => _Sign_inState();
}


// ignore: camel_case_types
class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Center(
        
        
        
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            
            child: Column(

              children: <Widget>[

                    Container(
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 75.0,
                            child: Image(
                              image: AssetImage(logo), fit: BoxFit.cover, height: 140.0, width: 140.0,
                            ),
                          ),

                          Container(margin: EdgeInsets.only(top: 1.0),child: Text("Sign-in", style: TextStyle(color: Colors.black,fontSize: 40.0, fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),


                Container(
                  child: Column(

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Text("E-Mail ID :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),
                         ],
                        ),
                      ),

                      Container(
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'user@domain.com',

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),



                      Container(
                        margin: const EdgeInsets.only(top: 35.0),
                        width: 200,
                       height: 45,
                       child: FlatButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => SigninOtp()),
                             );
                           },
                         child: Text("GO", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                         color: Colors.black,
                         splashColor: Colors.white,
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
    );
  }
}