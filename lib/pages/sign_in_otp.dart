import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/profile_info.dart';


class SigninOtp extends StatefulWidget {
  @override
  _SigninOtpState createState() => _SigninOtpState();
}

class _SigninOtpState extends State<SigninOtp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      //resizeToAvoidBottomPadding: false,

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
                        Container(padding: EdgeInsets.only(top: 1.0),child: Text("Sign-in", style: TextStyle(color: Colors.black,fontSize: 40.0, fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),



                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("A ", style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                      Text("One time password (OTP) ", style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.bold),),
                                      Text("has been sent to", style: TextStyle(color: Colors.black, fontSize: 16.0),)
                                    ],
                                  ),
                                        Text("your email address", style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 10.0,),
                            child: Container(
                             child: Row(
                               children: <Widget>[
                                 Text("OTP:", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
                               ],
                             ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Container(
                              height: 52.0,
                             child: TextField(
                               decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.black,),
                                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                 ),
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.black,),
                                   //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                 ),
                               ),
                               style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.normal),
                               cursorColor: Colors.black,
                               keyboardType: TextInputType.number,
                             ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.warning, color: Colors.grey[600],size: 22.0,),
                                  Text("Code doesn't match the record", style: TextStyle( color: Colors.grey[850], fontSize: 15.0,decoration: TextDecoration.underline),)
                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Resend the verification code?", style: TextStyle( color: Colors.black, fontSize: 16.0,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              width: 250,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Profileinfo()),
                                  );
                                },
                                child: Text("Sign-in", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                color: Colors.black,
                                splashColor: Colors.white24,
                              ),
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

