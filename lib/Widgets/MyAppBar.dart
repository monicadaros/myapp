import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Carteira",
      textAlign: TextAlign.right,
        style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.normal
        ),  
      ),
    );
  }
}