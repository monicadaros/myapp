import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Widgets/my_app_bar.dart';

class ConversionCoin extends StatefulWidget {
  const ConversionCoin({Key? key}) : super(key: key);

  @override
  State<ConversionCoin> createState() => _ConversionCoinState();
}

class _ConversionCoinState extends State<ConversionCoin> {
  String pagename = "Conversão de Moeda";
  final _convertFron = GlobalKey<FormState>();
  final _value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar(pageName: pagename),
          preferredSize: const Size(double.infinity, 50)),
      body: SingleChildScrollView(
        child: Form(
          child: TextFormField(
              key: _convertFron,
              controller: _value,
              style: const TextStyle(fontSize: 20, color: Colors.black),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Montante:"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (validValue) {
                if (validValue!.isEmpty) {
                  return "Informe o valor";
                } else if (double.parse(validValue) > 0) {}
                return null;
              }),
        ),
      ),
    );
  }
}
