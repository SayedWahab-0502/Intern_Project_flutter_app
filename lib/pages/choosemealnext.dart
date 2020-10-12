import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/main_drawer.dart';
import 'package:flutterapp2/pages/mycart.dart';


class ChooseMealNext extends StatefulWidget {
  @override
  _ChooseMealNextState createState() => _ChooseMealNextState();
}

class _ChooseMealNextState extends State<ChooseMealNext> {

  bool isSearching = false;
  final String meal= "Iorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut laboren et dolore magna aliqua.";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xFFFDEFD3),

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

      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[

                Container(
                  width: double.infinity,
                  height: 130.0,
                  child: Image.asset(background,fit: BoxFit.fill,),),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Container( alignment: Alignment.centerLeft,child: Text('<Item_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,)),
                ),

                Container(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Text(meal, style: TextStyle(color: Colors.black, fontSize: 15.0,), textAlign: TextAlign.justify,)),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0,),
                  child: Row(
                    children: <Widget>[

                      Expanded(flex: 2,child: Container(child: Text('₹ 100/-', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),


                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[

                              Icon(IconData(0xe800, fontFamily:'Icons',),size: 23.0, color: Colors.red,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Container(
                                  height: 33.0,
                                  width: 33.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black,// set border color
                                        width: 1.0),   // set border width
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5.0)), // set rounded corner radius
                                  ),
                                  child: Text('2', style: TextStyle(color: Colors.black, fontSize: 16.0), textAlign: TextAlign.center,),
                                ),
                              ),
                              Icon(IconData(0xe802, fontFamily:'Icons',),size: 23.0, color: Colors.green,),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(right: 7.0),
                            width: double.infinity,
                            height: 70.0,
                            child:  Image.asset(breakfast, fit: BoxFit.fill,),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[

                                Text('<Dish_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text('₹ 50/-', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                ),


                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[

                                Icon(IconData(0xe800, fontFamily:'Icons',),size: 23.0, color: Colors.red,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Container(
                                    height: 33.0,
                                    width: 33.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.black,// set border color
                                          width: 1.0),   // set border width
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)), // set rounded corner radius
                                    ),
                                    child: Text('2', style: TextStyle(color: Colors.black, fontSize: 16.0), textAlign: TextAlign.center,),
                                  ),
                                ),
                                Icon(IconData(0xe802, fontFamily:'Icons',),size: 23.0, color: Colors.green,),

                              ],
                            ),


                          ),
                        )

                      ],
                    ),
                  ),
                ),


                Container(
                  child: Row(
                    children: <Widget>[

                      Expanded(flex: 3,child: Container(child: Text('Customize your Choice', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),))),

                      Expanded(flex: 1,child: Container( alignment: Alignment.center,child: Text('< >', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),))),

                    ],
                  ),
                ),




                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.only(right: 7.0),
                                width: double.infinity,
                                height: 70.0,
                                child:  Image.asset(breakfast, fit: BoxFit.fill,),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[

                                    Text('<Dish_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text('₹ 50/-', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[

                                    Icon(IconData(0xe800, fontFamily:'Icons',),size: 23.0, color: Colors.red,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Container(
                                        height: 33.0,
                                        width: 33.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.black,// set border color
                                              width: 1.0),   // set border width
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)), // set rounded corner radius
                                        ),
                                        child: Text('2', style: TextStyle(color: Colors.black, fontSize: 16.0), textAlign: TextAlign.center,),
                                      ),
                                    ),
                                    Icon(IconData(0xe802, fontFamily:'Icons',),size: 23.0, color: Colors.green,),

                                  ],
                                ),


                              ),
                            )

                          ],
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.only(right: 7.0),
                                width: double.infinity,
                                height: 70.0,
                                child:  Image.asset(breakfast, fit: BoxFit.fill,),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[

                                    Text('<Dish_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text('₹ 50/-', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[

                                    Icon(IconData(0xe800, fontFamily:'Icons',),size: 23.0, color: Colors.red,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Container(
                                        height: 33.0,
                                        width: 33.0,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.black,// set border color
                                              width: 1.0),   // set border width
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0)), // set rounded corner radius
                                        ),
                                        child: Text('2', style: TextStyle(color: Colors.black, fontSize: 16.0), textAlign: TextAlign.center,),
                                      ),
                                    ),
                                    Icon(IconData(0xe802, fontFamily:'Icons',),size: 23.0, color: Colors.green,),

                                  ],
                                ),


                              ),
                            )

                          ],
                        ),
                      ),



                      Container(
                        width: double.infinity,
                        height: 40.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: FlatButton(
                          color: Colors.black,
                            splashColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyCart()),
                              );
                            },
                          child: Text('Go to Cart', style: TextStyle(color: Colors.white, fontSize: 17.0),),
                          
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
