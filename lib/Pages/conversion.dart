import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/Pages/sucess_convert.dart';
import 'package:myapp/Widgets/conversion_button.dart';
import 'package:myapp/Widgets/my_app_bar.dart';
import 'package:myapp/Widgets/value_crypto.dart';

import '../Widgets/dropdown_conversion.dart';

class ConversionCoin extends StatefulWidget {
  final ConvertButton? buttonName;
  final ValueCoin? teste2;
  const ConversionCoin({Key? key, this.buttonName, this.teste2})
      : super(key: key);

  @override
  State<ConversionCoin> createState() => _ConversionCoinState();
}

class _ConversionCoinState extends State<ConversionCoin> {
  String selectCryptoConvert = "";
  String selectCryptoReceive = "";
  String pagename = "Conversão de Moeda";
  final _convertFron = GlobalKey<FormState>();
  final _value = TextEditingController();
  final _receiveIn = GlobalKey<FormState>();
  final _valueReceive = TextEditingController();

  void selectCoinConvert(String value) {
    setState(() => selectCryptoConvert = value);
  }

  void selectCoinReceive(String value) {
    setState(() => selectCryptoReceive = value);
  }

  void percentConvert() {
    if (num.tryParse(widget.teste2!.valueBitcoin.toString())! == null) return;
    if (widget.buttonName == null) return;

    setState(() {
      print(num.tryParse(widget.teste2!.valueBitcoin.toString())!);
      _value.text = (num.tryParse(widget.teste2!.valueBitcoin.toString())! *
              widget.buttonName!.buttonName /
              100)
          .toString();
    });
  }

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
                DropdownList(
                    onChangedCrypto: (crypto) => selectCoinConvert(crypto)),
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
                          } else if (double.parse(validValue) > 0) {
                            // } else {
                            //   (selectCoinConvert) {
                            //     percentConvert();
                            //   };
                          }
                          return null;
                        }),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ConvertButton(
                    buttonName: 25,
                    valueCoin: ValueCoin(),
                    onPressed: () {
                      print("maurici");
                    },
                  ),
                  ConvertButton(
                    buttonName: 50,
                    valueCoin: ValueCoin(),
                    onPressed: percentConvert,
                  ),
                  ConvertButton(
                    buttonName: 75,
                    valueCoin: ValueCoin(),
                    onPressed: percentConvert,
                  ),
                  ConvertButton(
                    buttonName: 100,
                    valueCoin: ValueCoin(),
                    onPressed: percentConvert,
                  ),
                ]),
                const Divider(),
                const Text(
                  "Para receber em:",
                  style: TextStyle(fontSize: 20),
                ),
                DropdownList(
                    onChangedCrypto: (crypto) => selectCoinReceive(crypto)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      readOnly: true,
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
                      if (double.parse(_valueReceive.text) >= 0) {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => const SucessConvert());
                      } else {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  title: Text("Ops, algo deu errado!"),
                                ));
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

teste(double d) {}
