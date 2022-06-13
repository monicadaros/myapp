import 'package:flutter/material.dart';
import 'package:myapp/Widgets/value_crypto.dart';

class ConvertButton extends StatefulWidget {
  final int buttonName;
  final ValueCoin valueCoin;
  final VoidCallback onPressed;

  const ConvertButton({
    Key? key,
    required this.buttonName,
    required this.valueCoin,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ConvertButton> createState() => _ConvertButtonState();
}

class _ConvertButtonState extends State<ConvertButton> {
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
                  widget.onPressed();
                },
                child: Text(widget.buttonName.toString())),
          ),
        ]);
  }
}
