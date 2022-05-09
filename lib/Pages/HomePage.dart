import 'package:flutter/material.dart';
import 'package:myapp/Widgets/MyAppBar.dart';
import 'package:myapp/Widgets/crypto_btc.dart';
import 'package:myapp/Widgets/crypto_eth.dart';
import 'package:myapp/Widgets/crypto_ltc.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 5000;

  bool show = true;

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
      appBar: const PreferredSize(
        child: MyAppBar(),
        preferredSize: Size(double.infinity, 70),
      ),
      body: Container(
        // margin: EdgeInsets.all(40.0),
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
            ],
          ),
          CryptoBTC(show: show),
          CryptoLTC(),
          CryptoETH(),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "Carteira",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded), label: "Movimentações"),
        ],
      ),
    );
  }
}
