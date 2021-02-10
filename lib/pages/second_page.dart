import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.deepOrange,
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Container(
                child: Text('BURGER KING',
                style: new TextStyle(fontWeight: FontWeight.bold,
                fontSize: 45.0, color: Colors.red),),
              ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(2.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: new Image(
                          width: 300.0,
                          height: 200.0,
                          image: new AssetImage('assets/images/burger.png'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      icon: Icon(Icons.email)
                  ),
                )
              ],
            ),
          ],
        ),
      )),
      )
    );
  }
}
