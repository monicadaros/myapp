import 'package:flutter/material.dart';
import 'package:myapp/Widgets/my_app_bar.dart';
import 'package:myapp/Widgets/bottom_bar.dart';
import 'package:myapp/Widgets/crypto_list.dart';

class Carteira extends StatefulWidget {
  const Carteira({Key? key}) : super(key: key);

  @override
  State<Carteira> createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
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
          const Divider(),
          CryptoCoins(
            show: show,
          ),
        ]),
      ),
    );
  }
}
