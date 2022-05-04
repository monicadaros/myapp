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
    bool show = true;

    return Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment : MainAxisAlignment.spaceBetween,
          children: <Widget>[
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.black
              ), 
              child: ListTile(
                leading: Icon(Icons.currency_bitcoin),
                title: Text("ETH"),
                subtitle: Text("Ethereum"),
                trailing: Visibility(
                  visible: show,
                  child: Column(
                    children: [
                      Title(
                        color: Colors.black, 
                        child: Text("R\$50.000,00"),
                      ),
                      Container(
                        child: const Text("75%"),
                        decoration: BoxDecoration(
                          color: 0 > 0 ? Colors.green : Colors.red),
                        ),
                    ],
                  ),
                ),
            ),
            ),
          ]
        ),
    );
  }
}
              
                            
     

//           ListTile(
//              leading: Icon(Icons.currency_bitcoin),
  //            title: Text("BTC"),
    //          subtitle: Text("Bitcoin"),
      //        trailing: Text("R\$50.000,00"),
        //    ),
//
  //          ListTile(
    //          leading: Icon(Icons.currency_bitcoin),
      //        title: Text("LTC"),
        //      subtitle: Text("Litecoin"),
          //    trailing: Text("R\$50.000,00"),
            //)
 
