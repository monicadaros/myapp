import 'package:flutter/material.dart';
import 'package:myapp/Pages/conversion.dart';
import 'package:myapp/Pages/home_page.dart';
import 'package:myapp/Pages/details.dart';
import 'package:myapp/Pages/sucess_convert.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/homePage',
      routes: {
        '/sucess_convert': (BuildContext context) => const SucessConvert(),
        '/conversion': (BuildContext context) => const ConversionCoin(),
        '/homePage': (BuildContext context) => const Carteira(),
        '/bitcoin': (BuildContext context) => const DetailPage(
              coinName: "Bitcoin",
            ),
        '/litecoin': (BuildContext context) => const DetailPage(
              coinName: "Litecoin",
            ),
        '/etherum': (BuildContext context) => const DetailPage(
              coinName: "Etherum",
            ),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
