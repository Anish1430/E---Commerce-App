import 'package:e_commerse_new_design/models/categories_images.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height:100,
       child: ListView.separated(
         scrollDirection:Axis.horizontal, 
         itemCount: categories.length,
           itemBuilder: (context, index)  {
             return Column(
              children: [
                Container(
                  height: 60,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(
                       categories[index].images), 
                    fit: BoxFit.cover
                    ),
                  ),
                ),
                   const SizedBox(height: 2),
                   Text(
                    categories[index].title, style: const TextStyle(fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
              ],
             );
           }, 
    separatorBuilder: (context, index) => const SizedBox(width: 14)

       ),
    );
  }
}