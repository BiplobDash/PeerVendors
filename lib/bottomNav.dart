import 'package:flutter/material.dart';
import 'package:project4/account.dart';
import 'package:project4/chart.dart';
import 'package:project4/deshboard.dart';
import 'package:project4/myAds.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final _pages = [
    DeshboarScreen(),
    myAds(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.redAccent,
          ),
          backgroundColor: Colors.white70,
          mini: true,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        elevation: 5,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(
                Icons.shopping_basket,
              ),
            ),
            label: "My Ads",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Icon(
                Icons.chat_outlined,
              ),
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "Account",
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
