import 'package:flutter/material.dart';
import 'package:myapp/Widgets/day_variation.dart';
import 'package:myapp/Widgets/my_app_bar.dart';
import 'package:intl/intl.dart' as teste;

class MovimentPage extends StatefulWidget {
  const MovimentPage({Key? key}) : super(key: key);

  @override
  State<MovimentPage> createState() => _MovimentPageState();
}

class _MovimentPageState extends State<MovimentPage> {
  final String pageName = "Movimentações";
  final movimentDatas = DayVariationList().crypto;
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: MyAppBar(pageName: pageName),
            preferredSize: const Size(double.infinity, 40)),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ...movimentDatas.map((e) => Column(
                        children: [
                          SizedBox(
                            height: 80,
                            child: Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                    width: 3,
                                  ),
                                )),
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.compare_arrows_rounded,
                                  ),
                                  title: Text(
                                    e.abbreviationCrypto,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold, height: 2),
                                  ),
                                  subtitle: Text(
                                    (teste.DateFormat('dd-MM-yyyy')
                                        .format(now)),
                                  ),
                                  trailing: Column(children: [
                                    Title(
                                      color: Colors.grey,
                                      child: Text(
                                        e.unitCrypto.toString() +
                                            e.convertCrypto,
                                        textAlign: TextAlign.center,
                                        textDirection: TextDirection.ltr,
                                        textWidthBasis:
                                            TextWidthBasis.longestLine,
                                        style: const TextStyle(
                                            height: 2.3,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "R\$" +
                                          e.valueMoviment.toString() +
                                          ",00",
                                      textAlign: TextAlign.center,
                                      textDirection: TextDirection.ltr,
                                      textWidthBasis:
                                          TextWidthBasis.longestLine,
                                      style: const TextStyle(height: 1),
                                    )
                                  ]),
                                )),
                          )
                        ],
                      ))
                ]),
          ),
        ));
  }
}
