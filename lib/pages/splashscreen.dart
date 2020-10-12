import 'dart:async';
import 'package:flutter/material.dart';
import 'social_media_sigin.dart';


class Splashscreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
     return Startstate();
  }
}

class Startstate extends State<Splashscreen>{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Social_Media() ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/new_background.jpg"), fit: BoxFit.cover)
              ),

              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("meal_mania_logo.png", width: 140, height: 210,)
                    ],
                  ),
                ],
              ),
            ),
        );
  }
}
