import 'package:e_commerse_new_design/views/home_screens.dart';
import 'package:e_commerse_new_design/screens/Home/home_screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(), // means the app starts, it will display the HomeScreen.
        '/home_screen_two': (context) => const HomeScreensTwo(), // Route to HomeScreensTwo
      },
      initialRoute: '/',
    );
  }
}
