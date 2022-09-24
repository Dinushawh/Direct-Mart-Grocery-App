import 'package:directmart/cart/cart.dart';
import 'package:directmart/category/category.dart';
import 'package:directmart/favourite/favourite.dart';
import 'package:directmart/home/home.dart';
import 'package:directmart/login/login.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

var _currentIndex = 0;
final screens = [
  Home(),
  Category(),
  Cart(),
  Favourite(),
  Login(),
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          height: 60,
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          animationDuration: const Duration(milliseconds: 300),
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) =>
              setState(() => _currentIndex = index),
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home_rounded,
                color: Colors.green,
                size: 27.0,
              ),
              icon: const Icon(
                Icons.home_rounded,
                size: 27.0,
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.category_rounded,
                color: Colors.green,
                size: 27.0,
              ),
              icon: const Icon(
                Icons.category_rounded,
                size: 27.0,
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.green,
                size: 27.0,
              ),
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 27.0,
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.favorite_border_rounded,
                color: Colors.green,
                size: 27.0,
              ),
              icon: Icon(
                Icons.favorite_border_rounded,
                size: 27.0,
              ),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: const Icon(
                Icons.account_circle_rounded,
                color: Colors.green,
                size: 27.0,
              ),
              icon: const Icon(
                Icons.account_circle_rounded,
                size: 27.0,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
