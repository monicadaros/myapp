//import 'dart:html';
//import 'dart:ui';
//import 'package:flutter/material.dart';

//void main() { 
//  runApp (
//    MaterialApp (
//      home: myVisibleBottom()
//    ),
//  ); 
//}

//class myVisibleBottom extends StatefulWidget {
//  const ({ Key? VisibleBottom}) : super(key: myVisibleBottom);

//  @override
//  State<myVisibleBottom> createState() => _myVisibleBottomState();
///  bool _visibility;

//  bool get visibility => _visibility;

 // set visibility(bool visibility) {
   // _visibility = !visibility;
//  }
//}

//class _myVisibleBottomState extends State<myVisibleBottom> {
//  @override
//  Widget build(BuildContext context) {
//   return Scaffold(
//      body:
//        Container (
//          child: Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: [
//              Visibility(
//                visible: Visibility,
//                ),
//              Text("Careira",
//                style: const TextStyle(
//                  fontSize: 40,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//            Icon(Icons.visibility),
//            ],
//          )
//          )
//    );
//  }
//}