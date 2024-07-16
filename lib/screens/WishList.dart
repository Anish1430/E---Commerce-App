// ignore_for_file: file_names

import 'package:e_commerse_new_design/screens/Cart/cart_screen_show.dart';
import 'package:e_commerse_new_design/screens/Home/Widget/home_app_bar.dart';
import 'package:e_commerse_new_design/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  
  @override
    @override
  State<WishList> createState() => _StartWishList();
}

class _StartWishList extends State<WishList> {

   @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
        child: Padding(
          //padding: EdgeInsets.all(10),
           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(height: 4), 
                 CustomAppBar(),  //For custom App bar...(stylish Home avatar)...
              
                 MySearchBar(),    //for Search bar...  //
                 CartScreenShow(),   //show the cart Screen details....
            ],
          ),
        ),
      ),
    );
  }
}