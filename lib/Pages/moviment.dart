import 'package:flutter/material.dart';
import 'package:myapp/Widgets/bottom_bar.dart';
import 'package:myapp/Widgets/day_variation.dart';
import 'package:myapp/Widgets/my_app_bar.dart';

class MovimentPage extends StatefulWidget {
  const MovimentPage({Key? key}) : super(key: key);

  @override
  State<MovimentPage> createState() => _MovimentPageState();
}

class _MovimentPageState extends State<MovimentPage> {
  final String pageName = "Movimentações";

  final movimentDatas = DayVariationList().crypto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar(pageName: pageName),
          preferredSize: const Size(double.infinity, 40)),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              ...movimentDatas.map((e) => Column(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              width: 3,
                            ),
                          )),
                          child: ListTile(
                            leading: const Icon(Icons.local_pizza_outlined),
                            title: Text(
                              e.abbreviationCrypto,
                            ),
                            subtitle: Text(e.dateMoviment.toString()),
                            trailing: Column(children: [
                              Title(
                                color: Colors.grey,
                                child: Text(
                                  e.unitCrypto.toString(),
                                ),
                              ),
                              Text("R\$" + e.valueMoviment.toString() + ",00")
                            ]),
                          ))
                    ],
                  ))
            ]),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
