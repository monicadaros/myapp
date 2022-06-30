import 'package:flutter/material.dart';
import 'package:myapp/Shared/themes/app_images.dart';
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
          const Divider(),
          ListTile(
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
            onTap: () {
              Navigator.pushNamed(context, '/bitcoin');
            },
          ),
          const Divider(),
          ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(CryptoIcon.iconLTC),
              ),
              title: Text(crypto[1].abbreviationCrypto),
              subtitle: Text(crypto[1].nameCrypto),
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
                              color: crypto[1].variationCrypto > 0
                                  ? Colors.green
                                  : Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            crypto[1].variationCrypto.toString() + "%",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/litecoin');
              }),
          const Divider(),
          ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(CryptoIcon.iconETH),
              ),
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
                    SizedBox(
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
              onTap: () {
                Navigator.pushNamed(context, '/etherum');
              }),
          const Divider(),
        ],
      ),
    );
  }
}
