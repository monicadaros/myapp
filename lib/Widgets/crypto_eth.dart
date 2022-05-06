import 'package:flutter/material.dart';
import 'package:myapp/Widgets/day_variation.dart';

class CryptoETH extends StatefulWidget {
  const CryptoETH({Key? key}) : super(key: key);

  @override
  State<CryptoETH> createState() => _CryptoETHState();
}

class _CryptoETHState extends State<CryptoETH> {
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
                  title: Text(crypto[2].abbreviationCrypto),
                  subtitle: Text(crypto[2].nameCrypto),
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
                                  color: crypto[2].variationCrypto > 0
                                      ? Colors.green
                                      : Colors.red),
                              child: Text(
                                  crypto[2].variationCrypto.toString() + "%"),
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
