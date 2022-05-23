import 'package:flutter/material.dart';
import 'package:myapp/Pages/home_page.dart';
import 'package:myapp/Pages/details.dart';
import 'package:myapp/charts_flutter/chart_line.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/homePage',
      routes: {
        '/homePage': (BuildContext context) => const HomePage(),
        '/bitcoin': (BuildContext context) =>
            const DetailPage(coinName: "Bitcoin"),
        '/litecoin': (BuildContext context) =>
            const DetailPage(coinName: "Litecoin"),
        '/etherum': (BuildContext context) =>
            const DetailPage(coinName: "Etherum"),
        '/chart_graphic': (BuildContext context) => const GraphicBtc(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
