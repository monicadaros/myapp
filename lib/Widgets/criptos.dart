import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

void main(criptoCoin) {
  runApp (
    MaterialApp(
      home: criptoCoin,)
  );
}
class CriptoCoin extends StatefulWidget {
  const CriptoCoin({ Key? key }) : super(key: key);

  @override
  State<CriptoCoin> createState() => _CriptoCoinState();
}

class _CriptoCoinState extends State<CriptoCoin> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.currency_bitcoin),
            title: Text("BTC"),
            subtitle: Text("Bitcoin"),
          )
        ],
        );
  }
}