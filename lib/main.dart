import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage.dart';
import 'package:myapp/Pages/details.dart';
import 'package:myapp/charts_flutter/chart_graphic.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (BuildContext context) => const HomePage(),
        '/details': (BuildContext context) => const DetailPage(),
        '/chart_graphic': (BuildContext context) => const GraphicBtc(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
