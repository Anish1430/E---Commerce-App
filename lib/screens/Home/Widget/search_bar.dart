import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        _allFilter(),
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Widget SearchBar() {
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5), // Set circular border radius
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    child: Row(
      children: [
        const Icon(
          Icons.search,
          color: Color.fromRGBO(187, 187, 187, 1),
          size: 30,
        ),
        const SizedBox(width: 8),
        const Flexible(
          flex: 4,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search any Product...",
              border: InputBorder.none,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/audio_mike_home.png', // your image path
            height: 48, // Set the height of the image as needed
          ),
        ),
      ],
    ),
  );
}


Widget _allFilter() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'All Featured',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {
                // Add sort functionality here
              },
              label: const Text(
                'Sort',
                style: TextStyle(color: Colors.black),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 1),
              ),
              icon: Image.asset(
                'assets/images/sort_icons.png', // Replace with your image path
                width: 18, // Set the width of the image as needed
                height: 18, // Set the height of the image as needed
              ),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              onPressed: () {
                // Add filter functionality here
              },
              label: const Text(
                'Filter',
                style: TextStyle(color: Colors.black),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 8),
              ),
              icon: Image.asset(
                'assets/images/filter_icons.png', // Replace with your image path
                width: 18, // Set the width of the image as needed
                height: 18, // Set the height of the image as needed
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

