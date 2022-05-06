import 'package:flutter/material.dart';
import 'package:myapp/Pages/HomePage.dart';
import 'package:myapp/Widgets/crypto_btc.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'route_homepage',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes: {
        '/HomePage': (BuildContext context) => HomePage(),
        '/CryptoList': (BuildContext context) => CryptoBTC(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}
