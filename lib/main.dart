import 'package:flutter/material.dart';

void main () {
  runApp (
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink,),
      home: HomePage ()
    ),
  );
}
class HomePage extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          margin: EdgeInsets.all(40.0),
          padding: EdgeInsets.all(10.0),
          child: const Text("Carteira\n0",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
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
              label: "Movimentações",
            ),
          ],
        ),
    );
  }
}
