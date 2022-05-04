import 'dart:html';
import 'package:flutter/material.dart';
import 'package:myapp/Widgets/DayVariation.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({ Key? key }) : super(key: key);

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  
  final crypto = DayVariationList().crypto;

  @override
  Widget build(BuildContext context) {
    bool show = true;

void showToast () {
    setState(() {
      show =! show;
    });
  }

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
                title: Text(crypto[0].AbbreviationCrypto),
                subtitle: Text(crypto[0].NameCrypto),
                trailing: Visibility(
                  visible: show,
                  child: Column(
                    children: [
                      Title(
                        color: Colors.black, 
                        child: Text("R\$50.000,00"),
                      ),
                      Container(
                        child: Visibility(
                          visible: show,
                          child: DecoratedBox (
                          decoration: BoxDecoration(
                            color: crypto[0].VariationCrypto > 0 ? Colors.green : Colors.red),
                          child: Text(crypto[0].VariationCrypto.toString()+"%"),
                          ),
                        ),
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
 
