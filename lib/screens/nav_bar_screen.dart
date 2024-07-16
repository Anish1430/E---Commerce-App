import 'package:e_commerse_new_design/screens/Cart/cart_screen.dart';
import 'package:e_commerse_new_design/screens/WishList.dart';
import 'package:e_commerse_new_design/screens/home/home_screen_two.dart';
import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentIndex = 0; // Set the default screen to HomeScreensTwo
  final List<Widget> screens = const [
    HomeScreensTwo(),  ///home Screen...
    WishList(),   //WishList....
    Scaffold(),
    CartScreen(), //cartScreen....
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.shopping_cart_rounded,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.home,
                size: 30,
                color: currentIndex == 0 ? const Color.fromRGBO(235, 48, 48, 1) : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: currentIndex == 1 ? const Color.fromRGBO(235, 48, 48, 1) : Colors.black,
              ),
            ),
            const SizedBox(width: 15),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: Icon(
                Icons.search_outlined,
                size: 30,
                color: currentIndex == 3 ? const Color.fromRGBO(235, 48, 48, 1) : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(
                Icons.settings_outlined,
                size: 30,
                color: currentIndex == 4 ? const Color.fromRGBO(235, 48, 48, 1) : Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
