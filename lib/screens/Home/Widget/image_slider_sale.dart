// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ShopNowBuild extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;

  const ShopNowBuild({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  Widget _buildOffSeason() {
    return Column(
      children: [
        Container(
          child: SizedBox(
            height: 210,
            width: 420, // Make the width and height equal to make it a circle
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  'assets/images/group_images_4050.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/black_winter.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/mens_winter.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10), // Add some space between the image and the indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3, // Adjust the number of indicators based on the number of images
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: currentSlide == index ? 15 : 8,
              height: 8,
              margin: const EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                color: currentSlide == index ? Colors.black : Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildOffSeason();
  }
}

