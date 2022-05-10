import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (BuildContext context) => const HomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
