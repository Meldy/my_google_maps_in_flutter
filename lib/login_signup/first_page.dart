//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_in_flutter/new_main.dart';
import 'package:google_maps_in_flutter/main.dart';

void main() {
  runApp(MaterialApp(
    //home: MyApp(),
    debugShowCheckedModeBanner: false,
    //Get.to(main());
    initialRoute: '/',
    routes: {
      '/': (BuildContext context) =>MyApp(),
      '/second': (BuildContext context) => Main(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                //Main(),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Smart city traveller',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                        child: Container(
                            width: 200,
                            height: 150,

                            decoration: BoxDecoration(
                              //color: Colors.red,
                                borderRadius: BorderRadius.circular(50.0)),

                            child: Container(
                                child: Center(
                                    child: RaisedButton(
                                      textColor: Colors.white,
                                      color: Colors.blue,
                                      child: Text('Login via google'),
                                      onPressed: () {
                                        Navigator.push(
                                            context, MaterialPageRoute(builder: (context) => Main()),
                                        );
                                      },
                                    )
                                )
                            )
                        )
                    )
                ),
                SizedBox(
                  height: 130,
                ),
                Center(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Don\'t have one? \n Create google account',
                        style: TextStyle(
                            color: Colors.blue,
                            //fontWeight: FontWeight.w50,
                            fontSize: 15),
                      )),
                ),
              ],
            )
        )
    );
  }
}

  /*Widget buttonBuilder(
      String buttonText, BuildContext context, Widget callbackname) {
    return new RaisedButton(
      child: Text(buttonText),
        onPressed: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => callbackname));
        });
  }

  class Redirectionscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: unnecessary_new
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buttonBuilder('google login', context, Main()),
          ]
        )
      )
    );
  }}*/

