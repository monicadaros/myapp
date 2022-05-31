import 'package:flutter/material.dart';

class ConversionCoin extends StatefulWidget {
  const ConversionCoin({Key? key}) : super(key: key);

  @override
  State<ConversionCoin> createState() => _ConversionCoinState();
}

class _ConversionCoinState extends State<ConversionCoin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
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
        Form(child: ),
        const Text("Para receber em:"),
        Row(children: [OutlinedButton(onPressed: onPressed, child: const Text("Confirmar", style: TextStyle(color: Colors.white, backgroundColor: Colors.pink),),)],)],
      ),
    );
  }
}
