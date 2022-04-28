import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage.dart';
import 'package:myapp/Widgets/criptos.dart';


void main () {
  runApp (
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes:{
        '/HomePage':(BuildContext context) => HomePage(),
        '/criptoCoin':(BuildContext context) => criptoCoin(),
      },
      theme: ThemeData(primarySwatch: Colors.pink,),
    ),
  );
}