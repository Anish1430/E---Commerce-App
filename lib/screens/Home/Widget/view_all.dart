
import 'package:flutter/material.dart';
class ViewAllBar extends StatelessWidget {
  const ViewAllBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 64,
          width: double.infinity,
          color: const Color(0xFF4A80F0), // Blue background color
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deal of the Day',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(
                            '22h 55m 20s remaining',
                            style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
                        Padding(
                padding: const EdgeInsets.only(right: 12),
                child: TextButton(
                  onPressed: () {
                    // Add your view all action here
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: const Color(0xFF4A80F0), // Blue background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'View all ',
                        style: TextStyle(color: Colors.white,fontSize: 15),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}