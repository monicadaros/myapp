import 'package:flutter/material.dart';

void main () {
  runApp (
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink,
      ),
      home: HomePage ()
    ),
  );
}
class HomePage extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Text("Carteira\n0", textAlign: TextAlign.center),
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
