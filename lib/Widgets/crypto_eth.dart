import 'package:flutter/material.dart';
import 'package:myapp/Widgets/day_variation.dart';

class CryptoETH extends StatefulWidget {
  final bool show;
  const CryptoETH({Key? key, required this.show}) : super(key: key);

  @override
  State<CryptoETH> createState() => _CryptoETHState();
}

class _CryptoETHState extends State<CryptoETH> {
  final crypto = DayVariationList().crypto;

  @override
  Widget build(BuildContext context) {
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
                    visible: widget.show,
                    child: Column(
                      children: [
                        Title(
                          color: Colors.black,
                          child: const Text("R\$50.000,00"),
                        ),
                        Container(
                          height: 20,
                          width: 40,
                          child: Visibility(
                            visible: widget.show,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: crypto[2].variationCrypto > 0
                                      ? Colors.green
                                      : Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                crypto[2].variationCrypto.toString() + "%",
                                textAlign: TextAlign.center,
                              ),
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
