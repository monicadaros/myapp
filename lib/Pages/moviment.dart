import 'package:flutter/material.dart';
import 'package:myapp/Widgets/my_app_bar.dart';

class MovimentPage extends StatefulWidget {
  const MovimentPage({Key? key}) : super(key: key);

  @override
  State<MovimentPage> createState() => _MovimentPageState();
}

class _MovimentPageState extends State<MovimentPage> {
  final String pageName = "Movimentações";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar(pageName: pageName),
          preferredSize: const Size(double.infinity, 40)),
      body: SizedBox(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [ListTile()]),
      ),
    );
  }
}
