// ignore_for_file: file_names

import 'package:flutter/material.dart';
 

 //When you save it will goes to nextSection...
class SavePageCheckoutScreen extends StatelessWidget {


  final String imagePath;
  final double height;
  final double width;
  final BorderRadius radius;

  const SavePageCheckoutScreen({
    Key? key,
    required this.imagePath,
    required this.height,
    required this.width,
    required this.radius,
  }): super(key: key);


   
  @override
  Widget build(BuildContext context) {
     return ClipRRect(
      borderRadius: radius,
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
