import 'package:flutter/material.dart';
import 'package:myapp/Widgets/MyAppBar.dart';
import 'package:myapp/Widgets/bottom_bar.dart';
import 'package:myapp/Widgets/crypto_btc.dart';
import 'package:myapp/Widgets/crypto_eth.dart';
import 'package:myapp/Widgets/crypto_ltc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 5000;
  bool show = true;
  final String pageName = "Carteira";
  var height = AppBar().preferredSize.height;

  void showToast() {
    setState(() {
      show = !show;
    });
  }

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MyAppBar(pageName: pageName),
        preferredSize: const Size(double.infinity, 40),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Visibility(
                visible: show,
                child: Text(
                  "R\$$count,00",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                replacement: const Text(
                  "********",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  showToast();
                },
                child: const Icon(Icons.visibility),
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          CryptoBTC(
            show: show,
          ),
          CryptoETH(
            show: show,
          ),
          CryptoLTC(
            show: show,
          ),
        ]),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
