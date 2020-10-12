import 'package:flutter/material.dart';


class AddModify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    
    return Scaffold(
      backgroundColor: Colors.white,

        body: Container(


          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(

                children: <Widget>[

                  Container(margin: EdgeInsets.only(top: 20.0),alignment: Alignment.centerRight,
                      child: IconButton(icon: Icon(IconData(0xe800, fontFamily:'Iconsnewone',),size: 23.0, color: Color(0xFFD38A0E),),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )
                  ),


                  Container(margin: EdgeInsets.only(top: 20.0),child: Text('Add / Modify Reminder', style: TextStyle(color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.bold),)),


                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                          Text("Event Name :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                          Container(
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Enter text',

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
                  ),


                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                          Text("Description :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                          Container(
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Enter text',

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
                  ),


                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                          Text("Remind On :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                          Container(
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Enter text',

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
                  ),

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[

                          Text("Location :", style: TextStyle(color: Colors.grey[850], fontSize: 14.5),),


                          Container(
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Enter text',

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
                  ),




                  Container(
                    height: 40.0,
                    width: 150.0,
                    margin: EdgeInsets.only(top: 30.0),
                    child: FlatButton(
                      onPressed: () {
                      },
                      color: Colors.black,
                      splashColor: Colors.white,
                      child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 16.0),),
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
