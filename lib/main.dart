import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage.dart';
import 'package:myapp/Pages/details.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (BuildContext context) => const HomePage(),
        '/details': (BuildContext context) => const DetailPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
