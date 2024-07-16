// ignore_for_file: use_key_in_widget_constructors

import 'package:e_commerse_new_design/views/logo_screens.dart';
import 'package:flutter/material.dart';
import 'package:e_commerse_new_design/viewmodels/page_viewmodel.dart';
import 'onboarding_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageViewModel = PageViewModel();
    final pages = pageViewModel.getPages();

    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return LogoScreen();
          } else {
            return OnboardingScreen(
              pageModel: pages[index - 1],
              pageIndex: index - 1,
              totalPages: pages.length,
            );
          }
        },
      ),
    );
  }
}
