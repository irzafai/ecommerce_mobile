import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_mobile/features/cart/screens/cart_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/home_screen/home_screen.dart';
import 'package:ecommerce_mobile/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [HomeScreen(name: ''), ProfileScreen(), CartScreen()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffFFA451),
        index: selectedIndex,
        color: Colors.white,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.favorite, size: 30),
        ],
      ),
    );
  }
}
