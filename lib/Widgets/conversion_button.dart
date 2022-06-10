import 'package:flutter/material.dart';
import 'package:myapp/Widgets/value_crypto.dart';

class ConvertButton extends StatelessWidget {
  final int buttonName;
  final ValueCoin valueCoin;
  final double? qualquerCoisa = 3;
  const ConvertButton({
    Key? key,
    required this.buttonName,
    required this.valueCoin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide.none),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 255, 251, 255)),
                ),
                onPressed: () {
                  {}
                },
                child: Text(buttonName.toString())),
          ),
        ]);
  }
}
