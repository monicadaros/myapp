import 'dart:html';

import 'package:flutter/material.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({ Key? key }) : super(key: key);

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.currency_bitcoin),
              title: Text("ETH"),
              subtitle: Text("Ethereum"),
              trailing: Column(
                children: [
                  Text("R\$50.000,00"),
                  Text("-75%",
                    style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.23),
                   )
                ],
                ),
            ),

            ListTile(
              leading: Icon(Icons.currency_bitcoin),
              title: Text("BTC"),
              subtitle: Text("Bitcoin"),
              trailing: Text("R\$50.000,00"),
            ),

            ListTile(
              leading: Icon(Icons.currency_bitcoin),
              title: Text("LTC"),
              subtitle: Text("Litecoin"),
              trailing: Text("R\$50.000,00"),
            )
          ],
        ),
      ),
    );
  }
}