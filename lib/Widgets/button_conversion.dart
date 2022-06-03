import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget convertButton(String buttonName) {
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
