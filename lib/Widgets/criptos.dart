import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

void main(criptoCoin) {
  runApp (
    MaterialApp(
      home: criptoCoin,)
  );
}
class criptoCoin extends StatefulWidget {
  const criptoCoin({ Key? key }) : super(key: key);

  @override
  State<criptoCoin> createState() => _criptoCoinState();
}

class _criptoCoinState extends State<criptoCoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.currency_bitcoin),
            title: Text("BTC"),
            subtitle: Text("Bitcoin"),
          )
        ],
        ),
    );
  }
}