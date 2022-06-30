import 'package:flutter/material.dart';
import 'package:myapp/Pages/details.dart';
import 'package:myapp/Widgets/day_variation.dart';

class CryptoCoins extends StatefulWidget {
  final bool show;
  const CryptoCoins({Key? key, required this.show}) : super(key: key);

  @override
  State<CryptoCoins> createState() => _CryptoCoinsState();
}

class _CryptoCoinsState extends State<CryptoCoins> {
  final crypto = DayVariationList().crypto;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ...crypto
                .map((e) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              e.icon,
                            ),
                          ),
                          title: Text(e.abbreviationCrypto),
                          subtitle: Text(e.nameCrypto),
                          trailing: Visibility(
                            visible: widget.show,
                            child: Column(
                              children: [
                                Title(
                                  color: Colors.black,
                                  child: const Text("R\$50.000,00"),
                                ),
                                SizedBox(
                                    height: 20,
                                    width: 40,
                                    child: Visibility(
                                      visible: widget.show,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: e.variationCrypto > 0
                                              ? Colors.green
                                              : Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          e.variationCrypto.toString() + "%",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                    abbreviationCrypto: e.abbreviationCrypto,
                                    nameCrypto: e.nameCrypto,
                                    variationCrypto: e.variationCrypto),
                              ),
                            );
                          },
                        ),
                      ],
                    ))
                .toList(),
          ]),
    );
  }
}
