import 'package:flutter/material.dart';
import 'package:myapp/Widgets/MyAppBar.dart';
import 'package:myapp/Widgets/bottom_bar.dart';
import 'package:myapp/charts_flutter/chart_graphic.dart';
import '../Widgets/day_variation.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String pageName = "Detalhes";
  final crypto = DayVariationList().crypto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MyAppBar(
          pageName: pageName,
        ),
        preferredSize: const Size(double.infinity, 50),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey),
              ),
            ),
            child: SizedBox(
              child: Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    const ListTile(
                      title: Text(
                        "Moeda",
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      ),
                      subtitle: Text(
                        "Bitcoin",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ),
                    const GraphicBtc(),
                    const ListTile(
                      title: Text(
                        "Informações",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text(
                        "Bitcoin",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 85, 83, 83),
                        ),
                      ),
                      subtitle: Text("Valor Atual"),
                      trailing: Text("R\$20.0000,00"),
                    ),
                    ListTile(
                      title: const Text(
                        "Cap de Mercado",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 85, 83, 83)),
                      ),
                      trailing: DecoratedBox(
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
                    ),
                    const ListTile(
                      title: Text(
                        "Valor Mínimo",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 85, 83, 83)),
                      ),
                      trailing: Text("R\$0,02"),
                    ),
                    const ListTile(
                      title: Text(
                        "Valor Máximo",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 85, 83, 83)),
                      ),
                      trailing: Text("R\$0,47"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
