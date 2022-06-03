import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  final String buttonName;
  const ConvertButton({Key? key, required this.buttonName}) : super(key: key);

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
                if (kDebugMode) {
                  print("teste");
                }
              },
              child: Text(buttonName),
            ),
          ),
        ]);
  }
}
