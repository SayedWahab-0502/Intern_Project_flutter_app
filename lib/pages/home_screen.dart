import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/choosemeal.dart';
import 'package:flutterapp2/pages/main_drawer.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFDEFD3),
      resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        backgroundColor: Color(0xFFD38A0E),

        title: !isSearching ? Row(
          mainAxisAlignment: MainAxisAlignment.start,
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

                    Text('MEAL MANIA', style: TextStyle(color: Colors.white, fontSize: 16.0),),

                  ],
                ),
              ),


          ],
        )
            : TextField(

          style: TextStyle(color: Colors.white,),
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "Search here...",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white,),
            //borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        ),


        actions: <Widget>[
         Container(
           child: Row(
             children: <Widget>[

               IconButton(icon: Icon(Icons.search, color: Colors.white,),
                   onPressed: () {
                     setState(() {
                       this.isSearching =  !this.isSearching;
                     });
                   }),


               IconButton(icon: Icon(Icons.location_on, color: Colors.white,),
                   onPressed: () {}),

               IconButton(icon: Icon(IconData(0xe802, fontFamily: 'Appicon'), color: Colors.white,),
                   onPressed: () {}),

             ],

           ),

         )

        ],

      ),

      drawer: MainDrawer(),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[

              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        height: 110.0,
                        child: Image.asset(background,fit: BoxFit.fill,),),
                    ],
                  ),

              ),


               Expanded(
                 flex: 3,
                   child: Container(

                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[


                          Container(margin: EdgeInsets.only(top: 5.0),child: Text('Explore Menu :', style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold),)),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ChooseMeal()),
                                        );
                                      },
                                      child: Container(
                                        color: Colors.grey[100],
                                        padding: EdgeInsets.all(15.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset(breakfast),
                                            Padding(padding: EdgeInsets.only(top: 10.0)),
                                            Text('Breakfast', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                                          ],
                                        ),
                                      ),
                                    )
                                ),

                                Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),

                                Flexible(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ChooseMeal()),
                                        );
                                      },


                                      child: Container(
                                        color: Colors.grey[100],
                                        padding: EdgeInsets.all(15.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.asset(lunch),
                                            Padding(padding: EdgeInsets.only(top: 10.0)),
                                            Text('Lunch', style: TextStyle(color: Colors.black, fontSize: 16.0),)
                                          ],
                                        ),
                                      ),
                                    )
                                ),


                              ],
                            ),
                          ),




                          Row(
                            children: <Widget>[

                              Flexible(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ChooseMeal()),
                                      );
                                    },

                                    child: Container(
                                      color: Colors.grey[100],
                                      padding: EdgeInsets.all(15.0),
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset(dinner),

                                          Padding(padding: EdgeInsets.only(top: 10.0)),
                                          Text('Dinner', style: TextStyle(color: Colors.black, fontSize: 16.0),)

                                        ],
                                      ),
                                    ),
                                  )
                              ),

                              Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),

                              Flexible(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ChooseMeal()),
                                      );
                                    },

                                    child: Container(
                                      color: Colors.grey[100],
                                      padding: EdgeInsets.all(15.0),
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset(gymdiet),
                                          Padding(padding: EdgeInsets.only(top: 10.0)),
                                          Text('Gym Diet', style: TextStyle(color: Colors.black, fontSize: 16.0),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),


                            ],
                          )



                        ],
                       ),
                     ),
                   )
               )

             ],
            ),
          )
        ],

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
