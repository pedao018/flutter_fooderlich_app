import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/card1.dart';
import 'package:flutter_fooderlich_app/card2.dart';
import 'package:flutter_fooderlich_app/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = [Card1(), Card2(), Card3()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fooderlich",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card2"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card3")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
