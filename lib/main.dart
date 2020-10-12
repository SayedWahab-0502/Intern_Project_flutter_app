import 'package:flutter/material.dart';

import 'pages/splashscreen.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  //this widget is the root of your application
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splashscreen(),
    );
  }
}



