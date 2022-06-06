import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Pages/sucess_convert.dart';
import 'package:myapp/Widgets/conversion_button.dart';
import 'package:myapp/Widgets/form_conversion.dart';
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
  final _receiveIn = GlobalKey<FormState>();
  final _valueReceive = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar(pageName: pagename),
          preferredSize: const Size(double.infinity, 50)),
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "Converter de:",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const DropdownList(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                        key: _convertFron,
                        controller: _value,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Montante:"),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        validator: (validValue) {
                          if (validValue!.isEmpty) {
                            return "Informe o valor";
                          } else if (double.parse(validValue) > 0) {}
                          return null;
                        }),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ConvertButton(buttonName: "25%"),
                      ConvertButton(buttonName: "50%"),
                      ConvertButton(buttonName: "75%"),
                      ConvertButton(buttonName: "100%"),
                    ]),
                const Divider(),
                const Text(
                  "Para receber em:",
                  style: TextStyle(fontSize: 20),
                ),
                const DropdownList(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      key: _receiveIn,
                      controller: _valueReceive,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Montante pós conversão:"),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  OutlinedButton(
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 255, 255, 255))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homePage');
                    },
                    child: const Text(
                      "Cancelar",
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink)),
                    onPressed: () {
                      if (double.parse(_valueReceive.text) > 0) {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => const SucessConvert());
                      } else {
                        Navigator.pushNamed(context, '/litecoin');
                      }
                    },
                    child: const Text(
                      "Confirmar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
              ]),
        ),
      ),
    );
  }
}
