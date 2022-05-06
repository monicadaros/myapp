import 'package:flutter/material.dart';
import 'package:myapp/Widgets/day_variation.dart';

class CryptoBTC extends StatefulWidget {
  const CryptoBTC({Key? key}) : super(key: key);

  @override
  State<CryptoBTC> createState() => _CryptoBTCState();
}

class _CryptoBTCState extends State<CryptoBTC> {
  final crypto = DayVariationList().crypto;

  @override
  Widget build(BuildContext context) {
    bool show = true;

    void showToast() {
      setState(() {
        show = !show;
      });
    }

    return Material(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
              child: DefaultTextStyle(
                style: const TextStyle(color: Colors.black),
                child: ListTile(
                  leading: const Icon(Icons.currency_bitcoin),
                  title: Text(crypto[0].abbreviationCrypto),
                  subtitle: Text(crypto[0].nameCrypto),
                  trailing: Visibility(
                    visible: show,
                    child: Column(
                      children: [
                        Title(
                          color: Colors.black,
                          child: const Text("R\$50.000,00"),
                        ),
                        Container(
                          child: Visibility(
                            visible: show,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: crypto[0].variationCrypto > 0
                                      ? Colors.green
                                      : Colors.red),
                              child: Text(
                                  crypto[0].variationCrypto.toString() + "%"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
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
 
