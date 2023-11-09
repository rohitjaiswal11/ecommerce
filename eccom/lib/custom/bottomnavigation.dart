
import 'package:eccom/Home.dart';
import 'package:eccom/List.dart';
import 'package:eccom/Cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.trolley),
            icon: Icon(Icons.trolley),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.heart_broken_outlined),
            icon: Icon(Icons.heart_broken_rounded),
            label: 'wishlist',
          ),
        ],
      ),
      body: <Widget>[
        HomePage(),
      CartScreen(cartItems: cartItems),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
