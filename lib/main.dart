import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage.dart';
import 'package:myapp/Widgets/CryptoList.dart';
import 'package:myapp/Widgets/CryptoModel.dart';


void main () {
  runApp (
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes:{
        '/HomePage':(BuildContext context) => HomePage(),
        '/CryptoList':(BuildContext context) => CryptoList(),
      },
      theme: ThemeData(primarySwatch: Colors.pink,),
    ),
  );
}