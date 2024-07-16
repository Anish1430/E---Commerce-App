

// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'package:e_commerse_new_design/viewmodels/page_viewmodel.dart';

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreenState createState() => _LogoScreenState();  
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {  
    super.initState();
    
    Timer(Duration(seconds: 2), _navigateToNextScreen);  
  }

  void _navigateToNextScreen() {  
    final pageViewModel = PageViewModel(); //Go to PageViewModel().....
    final pages = pageViewModel.getPages();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnboardingScreen( //navigate To Onboarding Screen or means(It's a subclass of Route)
          pageModel: pages[0],
          pageIndex: 0,
          totalPages: pages.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/stylish.png', width: 150, height: 150),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
