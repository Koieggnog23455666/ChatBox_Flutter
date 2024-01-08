import 'dart:async';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

var arr=[1,2,3,4,5,6,7,8,9];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          itemExtent:200 ,
          children: arr.map((value) =>
           Padding(padding: EdgeInsets.all(12),child: Container(
             decoration: BoxDecoration(
               color: Colors.green,
               borderRadius: BorderRadius.circular(20)
             ),
            
             width: double.infinity,
             child: Center(child: Text("$value",style: TextStyle(fontSize: 30),)),
           ),)
           ).toList(),


        ),
      ),
    );
  }
}