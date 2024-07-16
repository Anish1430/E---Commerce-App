// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:e_commerse_new_design/views/GetStartedScreen.dart';
import 'package:flutter/material.dart';
import '../models/page_model.dart';
import 'package:e_commerse_new_design/viewModels/page_viewmodel.dart';

class OnboardingScreen extends StatelessWidget {
  final PageModel pageModel;
  final int pageIndex;
  final int totalPages;

  OnboardingScreen({
    required this.pageModel,
    required this.pageIndex,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white, // Set background color to white
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: [
              buildHeader(context), 
              SizedBox(height: 30),
              // 1/3 and Skip ...
             //Spacer(),
            
  Container(
    height: 500,
    child: Column(
      children: [
        buildImage(), //Image...
        buildTitle(),  //title shows
        buildDescription(), //text shows and etc..
      ],
    ),
  ),
  Spacer(),
  buildNavigationControls(context),
      ],  
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text(
            '${pageIndex + 1}/$totalPages',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Spacer(),  
          if (pageIndex < totalPages - 1 || pageIndex == totalPages - 1) ...[
            TextButton(
              onPressed: () {
                navigateToGetStarted(context); // Navigate to GetStartedScreen
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget buildImage() {
    return  Expanded(
      child: Image.asset(pageModel.imagePath),
    );
  }

  Widget buildTitle() {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          pageModel.title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget buildDescription() {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SizedBox(height: 10),
        Text(
          'Amet minim mollit non deserunt ullamco.\n'
          'est sit aliqua dolor do amet sint. Velit officia\n'
          'consequat duis enim velit mollit.',
          style: TextStyle(fontSize: 18, color: Color.fromRGBO(168, 168, 169, 1)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget buildNavigationControls(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          if (pageIndex > 0)
            TextButton(
              onPressed: () {
                final pageViewModel = PageViewModel();
                final pages = pageViewModel.getPages();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingScreen(
                      pageModel: pages[pageIndex - 1],
                      pageIndex: pageIndex - 1,
                      totalPages: totalPages,
                    ),
                  ),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(
                'Prev',
                style: TextStyle(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

//In this code we Create a Spacer Between the Prev and Next in Between ...(... like this)
          Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(totalPages, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: 8.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageIndex == index ? Colors.red : Colors.black,
                    ),
                  );
                }),
              ),
         Spacer(),
          
          if (pageIndex == totalPages - 1) // If on the last page Created a get Started text with Clickable...
            TextButton(
              onPressed: () {
                navigateToGetStarted(context); // Navigate to GetStartedScreen
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color.fromRGBO(248, 55, 88, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          if (pageIndex < totalPages - 1)
            TextButton(
              onPressed: () {
                final pageViewModel = PageViewModel();
                final pages = pageViewModel.getPages();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingScreen(
                      pageModel: pages[pageIndex + 1],
                      pageIndex: pageIndex + 1,
                      totalPages: totalPages,
                    ),
                  ),
                );

              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  color: Color.fromRGBO(248, 55, 88, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
           //Go to StartedScreen  Here...
  void navigateToGetStarted(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => GetStartedScreen(), // Navigate to GetStartedScreen means Go to GetStated ....
      ),
    );
  }
}



