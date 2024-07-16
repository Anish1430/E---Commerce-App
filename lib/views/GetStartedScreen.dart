// ignore_for_file: file_names, sort_child_properties_last

import 'package:e_commerse_new_design/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            _buildBackground(),  //Image set AS background in this code
            _buildBottomContent(), //// Pushes the content to the bottom means upper part of this code...
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/unsplash_new_image.png'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.8),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomContent() {
    return Column(
      children: [
        const Spacer(), // Pushes the content to the bottom
        Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.transparent,
          child: Column(
            children: [
              _buildMainText(),
              const SizedBox(height: 8),  //add Sixed height means just down how the margin you want
              _buildSecondaryText(),
              const SizedBox(height: 40), // Add margin of 5 above the button
              _buildGetStartedButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMainText() {
    return const Text(
      'You want\nAuthentic, here\nyou go!',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1), // Text color in RGBA
        fontSize: 39,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSecondaryText() {
    return const Text(
      'Find it. Love it. Buy it.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFFF2F2F2), // Text color in RGBA
        fontSize: 18,
      ),
    );
  }

  Widget _buildGetStartedButton() {
    return ElevatedButton(
         onPressed: () {
           navigateToGetHomePageScreensTwo(context); // Navigate to GetStartedScreen
              },
      child: Container(
        alignment: Alignment.center,
        width: 190, // Adjust width as needed
        height: 60,  // Adjust height as needed
        child: const Text(
          'Get Started',
          style: TextStyle(fontSize: 16,
           color: Color.fromRGBO(255, 255, 255, 1),  //Text Color white...
          ),
        ),
      ),
      
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF83758), // Button background color in RGBA
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Adjust border radius if needed
        ),
      ),
    );
  }
   
      //Go to the home page in here......
     void navigateToGetHomePageScreensTwo(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(    //HomeScreen 2 means=Home
        builder: (context) => const NavigationBarScreen(), // Navigate to HomeScreenTwo means Go to after the GetStartedScreen...
      ),
    );
  }
 
}
