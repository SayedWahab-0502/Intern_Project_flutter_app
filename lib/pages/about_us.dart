import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';


class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFFDEFD3),

      appBar: AppBar(
          backgroundColor: Color(0xFFD38A0E),
        automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(),
          ),

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
                  )
             ]),



        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new,color: Colors.white,),
            onPressed: () {},

              ),
             ],
         ),


      body: Container(


         child: SingleChildScrollView(
           child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[


                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              color: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text('About Us', style: TextStyle(color: Colors.white, fontSize: 18.0),textAlign: TextAlign.center,)
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text('Why meal mania?', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),),
                          ),


                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF000000),
                                    radius: 65.0,
                                    child: Image(
                                      image: AssetImage(logo), fit: BoxFit.cover, height: 120.0, width: 120.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                      Container(
                        padding:EdgeInsets.all(10.0),

                        child: Column(
                          children: <Widget>[

                            Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequot.', style: TextStyle(color: Colors.black, fontSize: 14.0),
                            textAlign: TextAlign.justify,),


                            Padding(padding: EdgeInsets.only(top: 15.0),),
                            Text('lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequot. Duis aute irure dolor in reprehender in voluptate velit esse cillum dolore eu fugiat nulla parariatur. Excepteur sint occaecat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: TextStyle(color: Colors.black, fontSize: 14.0),
                            textAlign: TextAlign.justify,),


                          ],
                        ),

                      )

                ],
              ),
            ),
         )


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
