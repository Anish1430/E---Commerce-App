import 'package:e_commerse_new_design/models/shopping_bags_screens.dart';
import 'package:flutter/material.dart';
import 'package:e_commerse_new_design/screens/Cart/save_page_checkOut_screen.dart';// Import the new page here

class ProductTotalScreen extends StatelessWidget {
  const ProductTotalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      //  color: Colors.white, // Set the background color to red
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Row aligns correctly
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ShoppingBagScreen()), // Navigate to the new page
                    );
                  },
                  child: SavePageCheckoutScreen(
                    imagePath: 'assets/images/women_kurties.png', // Replace with your actual image path
                    height: 140,
                    width: 150,
                    radius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(width: 12), // Fixed height to width.....
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Text aligns to the left
                    children: [
                      const Text(
                        "Women's Casual Wear",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(right: 4),
                        child: Row(
                          children: [
                            const Text(
                              "Variations: ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 18,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 4),
                                      child: Text(
                                        "Black",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 16,
                                      width: 44,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1),
                                        border: Border.all(
                                          color: Colors.black, // Example border color
                                          width: 0.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                height: 16,
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(
                                        "Red",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 16,
                                      width: 39,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(
                                          color: Colors.black, // Example border color
                                          width: 0.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            const Text(
                              "4.8",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber[600],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 28,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Text(
                                      "\$ 34.00",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      height: 28,
                                      width: 84,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                          width: 0.3,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "upto 33% off ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    SizedBox(
                                      height: 16,
                                      width: double.maxFinite,
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "\$ 64.00",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(167, 167, 167, 1),
                                                decoration: TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 1,
                                            width: 46,
                                            margin: const EdgeInsets.only(bottom: 6),
                                            color: Colors.grey[600],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: Colors.grey[400]!.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 12),
          const SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Order (1)",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "\$ 34.00",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}