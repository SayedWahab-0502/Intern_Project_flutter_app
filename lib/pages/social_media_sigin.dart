import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/sign_in.dart';






class Social_Media extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Social_Media_State();
  }

}

class Social_Media_State extends State<Social_Media>{

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body: Stack(

        fit: StackFit.expand,
      children: <Widget>[

        Container(

        color: Colors.white,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[


                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        OutlineButton(
                          borderSide: BorderSide(width: 1.0),
                          child: Text('Skip', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                          color: Colors.white,
                          splashColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Sign_in()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 75.0,
                            child: Image(
                              image: AssetImage(logo), fit: BoxFit.cover, height: 140.0, width: 140.0,
                            ),
                          )
                    ],
                  ),
                ),


                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                          Container(
                            margin: EdgeInsets.only(top: 15.0),
                            height: 45.0,
                            child: OutlineButton(
                              onPressed: () {

                              },
                              borderSide: BorderSide(width: 1.0),
                              splashColor: Colors.lightBlue[100],
                              child: Row(
                                children: <Widget>[
                                  Expanded(flex: 1,child: Container(child: Image.asset(facebook_logo , width: 32.0, height: 32.0,))),
                                Expanded(flex: 3,child: Container(child: Text("Continue with Facebook", style: TextStyle(color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.bold),)))
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                            ),
                          ),



                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          height: 45.0,
                          child: OutlineButton(
                            onPressed: () {

                            },
                            borderSide: BorderSide(width: 1.0),
                            splashColor: Colors.yellow[200],
                            child: Row(
                              children: <Widget>[
                                Expanded(flex: 1,child: Container(child: Image.asset(google_logo , width: 32.0, height: 32.0,))),
                                Expanded(flex: 3,child: Container(child: Text("Continue with Google", style: TextStyle(color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.bold),)))
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                        ),


                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          height: 45.0,
                          child: OutlineButton(
                            onPressed: () {},
                            borderSide: BorderSide(width: 1.0),
                            splashColor: Colors.red[200],
                            child: Row(
                              children: <Widget>[
                                Expanded(flex: 1,child: Container(child: Image.asset(gmail_logo , width: 32.0, height: 32.0,))),

                                Expanded(flex: 3,child: Container(child: Text("Continue with Gmail", style: TextStyle(color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.bold),))),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                        ),


                       Container(
                         margin: EdgeInsets.only(top: 20.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Container(child: Text("By Continuing you agree to our Terms of Service", style: TextStyle(color: Colors.grey[850], fontSize: 14.0))),
                             Container(child: Text("and Privacy Policy", style: TextStyle(color: Colors.grey[850], fontSize: 14.0))),
                           ],
                         ),
                       ),
                      ],
                    ),
                  ),
                )


        ],
            ),
          ),
    ), ],
      ),
    );
  }
}