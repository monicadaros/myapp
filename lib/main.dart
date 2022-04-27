import 'dart:html';
import 'package:flutter/material.dart';
import 'package:myapp/Widgets/criptos.dart';

void main () {
  runApp (
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink,),
      home: HomePage ()
    ),
  );
}
class HomePage extends StatefulWidget { 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;


  void increment () {
    count++;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text("Carteira\n$count",
              style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              ),
            ),
                Icon (Icons.visibility)
              ],
            ),
            margin: EdgeInsets.all(40.0),
            padding: EdgeInsets.all(10.0),
          ),

        bottomNavigationBar: BottomNavigationBar (
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem (
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem (
              icon: Icon(Icons.card_travel),
              label: "Carteira",
            ),
            BottomNavigationBarItem (
              icon: Icon(Icons.bar_chart_rounded),
              label: "Movimentações"),
          ],
        ),
    );
  }
}