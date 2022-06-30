import 'package:flutter/material.dart';
import 'package:myapp/Pages/conversion.dart';
import 'package:myapp/Pages/home_page.dart';
import 'package:myapp/Pages/sucess_convert.dart';
import 'package:myapp/Widgets/bottom_bar.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/bottom_bar',
      routes: {
        '/bottom_bar': (BuildContext context) => const MyBottomBar(),
        '/sucess_convert': (BuildContext context) => const SucessConvert(),
        '/conversion': (BuildContext context) => const ConversionCoin(),
        '/homePage': (BuildContext context) => const Carteira(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
