import 'package:flutter/material.dart';

class ConversionCoin extends StatefulWidget {
  const ConversionCoin({Key? key}) : super(key: key);

  @override
  State<ConversionCoin> createState() => _ConversionCoinState();
}

class _ConversionCoinState extends State<ConversionCoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Title(
                color: Colors.black,
                child: const Text(
                  "Conversor de Moedas",
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 30),
                ),
              ),
              const Text("Converter de:"),
              const Form(child: Text("teste")),
              const Text("Para receber em:"),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: OutlinedButton(
                    onPressed: (() {
                      debugDumpApp();
                    }),
                    child: const Text(
                      "Confirmar",
                      style: TextStyle(
                          color: Colors.white, backgroundColor: Colors.pink),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
