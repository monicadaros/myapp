import 'package:flutter/material.dart';
import 'package:myapp/Widgets/MyAppBar.dart';
import 'package:myapp/Widgets/bottom_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String pageName = "Detalhes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: MyAppBar(
          pageName: pageName,
        ),
        preferredSize: const Size(double.infinity, 50),
      ),
      body: Container(
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
                children: const [
                  ListTile(
                    title: Text(
                      "Informações",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
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
                  Divider(),
                  ListTile(
                    title: Text(
                      "Cap de Mercado",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 85, 83, 83)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
