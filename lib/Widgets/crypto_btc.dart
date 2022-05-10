import 'package:flutter/material.dart';
import 'package:myapp/Shared/themes/app_images.dart';
import 'package:myapp/Widgets/day_variation.dart';

class CryptoBTC extends StatefulWidget {
  final bool show;
  const CryptoBTC({Key? key, required this.show}) : super(key: key);

  @override
  State<CryptoBTC> createState() => _CryptoBTCState();
}

class _CryptoBTCState extends State<CryptoBTC> {
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
                  leading: const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      CryptoIcon.iconBTC,
                    ),
                  ),
                  title: Text(crypto[0].abbreviationCrypto),
                  subtitle: Text(crypto[0].nameCrypto),
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
                                  color: crypto[0].variationCrypto > 0
                                      ? Colors.green
                                      : Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  crypto[0].variationCrypto.toString() + "%",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )),
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
