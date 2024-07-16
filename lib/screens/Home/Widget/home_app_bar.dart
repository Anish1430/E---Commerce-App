import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(height: 110),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {},
              icon: Image.asset(
                "assets/images/home_page_List_image.png", // Replace with your image path
              ),
            ),
            const Spacer(),
            const SizedBox(width: 25), // Add spacing between icons
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/stylis_home_page.png", // Replace with your image path
              ),
            ),
            const Spacer(),
            const SizedBox(width: 25), // Add spacing before Avatar
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(
                  "assets/images/avatar_home.png", // Replace with your avatar image path
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
