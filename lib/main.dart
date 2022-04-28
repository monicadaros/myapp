import 'dart:collection';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:myapp/Widgets/MyAppBar.dart';
import 'package:myapp/Widgets/criptos.dart';

void main () {
  runApp (
    MaterialApp(
      title: 'route_test',
      debugShowCheckedModeBanner: false,
      initialRoute: '/HomePage',
      routes:{
        '/HomePage':(BuildContext context) => HomePage(),
      },
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
  
  var tabTitle = "Carteira";

  var count = 5000;

  bool show = true;

  void showToast () {
    setState(() {
      show =! show;
    });
  }
  void increment () {
    count++;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: MyAppBar(), preferredSize: Size(double.infinity, 70),),
        body:
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Visibility(
                  visible: show,
                  child: Text("R\$$count ,00",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    ),
                ),
              ),
               TextButton(
                  onPressed:() {
                      showToast();
                    },
                  child: Icon(Icons.visibility))
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