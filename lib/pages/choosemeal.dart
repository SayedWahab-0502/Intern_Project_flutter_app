import 'package:flutter/material.dart';
import 'package:flutterapp2/images.dart';
import 'package:flutterapp2/pages/choosemealnext.dart';
import 'package:flutterapp2/pages/main_drawer.dart';



class ChooseMeal extends StatefulWidget {
  @override
  _ChooseMealState createState() => _ChooseMealState();
}

class _ChooseMealState extends State<ChooseMeal> {
  bool isSearching = false;

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                width: double.infinity,
                height: 40.0,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: <Widget>[

                      Expanded(flex: 1,child: Container(child: Text('Choose your meal', style: TextStyle(color: Colors.white, fontSize: 18.0,),textAlign: TextAlign.center,))),

                      Expanded(flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                              child: Icon(Icons.shopping_cart,size: 26.0, color: Colors.white,)))
                    ],

                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  color: Colors.white,
                  height: 38.0,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black,),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,),
                        //borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,

                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[

                      Card(
                        elevation: 5,
                        child: Container(
                          color: Colors.grey[100],
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Column(

                            children: <Widget>[

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ChooseMealNext()),
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 130.0,
                                  child: Image.asset(background,fit: BoxFit.fill,),),
                              ),


                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
                                child: Row(
                                  children: <Widget>[

                                    Expanded(flex: 2,child: Container(child: Text('<Dish_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),


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
                                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                child: Row(
                                 children: <Widget>[
                                   Expanded(flex: 2,child: Container(child: Text('Rs. 150/', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),

                                   Expanded(
                                     flex: 1,
                                     child: Container(

                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: <Widget>[

                                           Container(
                                             height: 30.0,
                                             width: 100.0,
                                             child: OutlineButton(
                                               onPressed: () {
                                               },
                                               borderSide: BorderSide(width: 1.0),
                                               splashColor: Colors.white,
                                               shape: RoundedRectangleBorder(
                                                   borderRadius: BorderRadius.circular(5.0)
                                               ),
                                               color: Colors.black,
                                               child: Text('Add to Cart', style: TextStyle(color: Colors.black, fontSize: 13.0,),),
                                             ),
                                           ),


                                         ],
                                       ),
                                     ),
                                   )



                                 ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            color: Colors.grey[100],
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Column(

                              children: <Widget>[

                                Container(
                                  width: double.infinity,
                                  height: 130.0,
                                  child: Image.asset(background,fit: BoxFit.fill,),),


                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
                                  child: Row(
                                    children: <Widget>[

                                      Expanded(flex: 2,child: Container(child: Text('<Dish_Name>', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),


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
                                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(flex: 2,child: Container(child: Text('Rs. 150/', style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),))),

                                      Expanded(
                                        flex: 1,
                                        child: Container(

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[

                                              Container(
                                                height: 30.0,
                                                width: 100.0,
                                                child: OutlineButton(
                                                  onPressed: () {
                                                  },
                                                  borderSide: BorderSide(width: 1.0),
                                                  splashColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0)
                                                  ),
                                                  color: Colors.black,
                                                  child: Text('Add to Cart', style: TextStyle(color: Colors.black, fontSize: 13.0,),),
                                                ),
                                              ),


                                            ],
                                          ),
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


                    ],
                  ),
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
