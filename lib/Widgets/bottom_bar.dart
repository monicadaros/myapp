import 'package:flutter/material.dart';
import 'package:myapp/Pages/home_page.dart';
import 'package:myapp/Pages/moviment.dart';
import 'package:myapp/Pages/teste_page.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  final pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageViewController,
        children: const [
          HomePage(),
          Carteira(),
          MovimentPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              onTap: (home) {
                pageViewController.jumpToPage(home);
              },
              currentIndex: pageViewController.page?.round() ?? 0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel),
                  label: "Carteira",
                ),
                BottomNavigationBarItem(
                  activeIcon: ButtonBar(children: []),
                  icon: Icon(Icons.bar_chart_rounded),
                  label: "Movimentações",
                ),
              ],
            );
          }),
    );
  }
}
