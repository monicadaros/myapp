import 'package:flutter/material.dart';
import 'package:myapp/Widgets/my_app_bar.dart';
import 'package:myapp/charts_flutter/chart_bar.dart';
import 'package:myapp/charts_flutter/chart_line.dart';
import '../Widgets/day_variation.dart';

class DetailPage extends StatefulWidget {
  final String nameCrypto;
  final String abbreviationCrypto;
  final int variationCrypto;
  const DetailPage(
      {Key? key,
      required this.abbreviationCrypto,
      required this.nameCrypto,
      required this.variationCrypto})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String pageName = "Detalhes";
  final crypto = DayVariationList().crypto;
  void _replace(bool replace) {
    setState(() => select = replace);
  }

  bool select = false;

  get child => null;

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
                      ListTile(
                        title: const Text(
                          "Moeda",
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ),
                        subtitle: Text(
                          widget.nameCrypto,
                          style: const TextStyle(
                              fontSize: 30, color: Colors.black),
                        ),
                        trailing: IconButton(
                            onPressed: () => _replace(!select),
                            icon: select
                                ? const Icon(Icons.show_chart)
                                : const Icon(Icons.bar_chart)),
                      ),
                      Center(
                        child:
                            select ? const BarGraphic() : const LineGraphic(),
                      ),
                      const ListTile(
                        title: Text(
                          "Informa????es",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        title: Text(
                          widget.nameCrypto,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 85, 83, 83),
                          ),
                        ),
                        subtitle: const Text("Valor Atual"),
                        trailing: const Text("R\$20.0000,00"),
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
                            color: widget.variationCrypto > 0
                                ? Colors.green
                                : Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            widget.variationCrypto.toString() + "%",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const ListTile(
                        title: Text(
                          "Valor M??nimo",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        trailing: Text("R\$0,02"),
                      ),
                      const ListTile(
                        title: Text(
                          "Valor M??ximo",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 83, 83)),
                        ),
                        trailing: Text("R\$0,47"),
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/conversion');
                        },
                        child: const Text(
                          "Converter Moeda",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
