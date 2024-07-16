import 'package:e_commerse_new_design/screens/Home/Widget/category.dart';
import 'package:e_commerse_new_design/screens/Home/Widget/home_app_bar.dart';
import 'package:e_commerse_new_design/screens/Home/Widget/search_bar.dart';
import 'package:e_commerse_new_design/screens/Home/Widget/view_all.dart';
import 'package:flutter/material.dart';

import 'Widget/image_slider_sale.dart';
import 'Widget/women_special_offer.dart';

class HomeScreensTwo extends StatefulWidget {
  const HomeScreensTwo({super.key});

  @override
  State<HomeScreensTwo> createState() => _HomeScreensTwoState();
}

class _HomeScreensTwoState extends State<HomeScreensTwo> {
   int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          //padding: EdgeInsets.all(10),
           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                
               const SizedBox(height: 4), 
               const  CustomAppBar(),  //For custom App bar...(stylish Home avatar)...

               const  MySearchBar(),    //for Search bar... 

               const SizedBox(height: 0),
               const Categories(),  //

                //category slider...
                   
              ShopNowBuild(                    //50--40 percent code...
                currentSlide: currentSlider, 
                onChange: (value) {
                 setState(
                    () {
                       currentSlider=value;
                    },
                 );
              },
              ), 

                   //Not coping......
                const SizedBox(height: 5),
                const ViewAllBar(),  //View Bar Call....(Deal Of the Day..)
                
               const SizedBox(height: 15), 
                const  WomenSpecialOffer(),  // (Women,PrinTing Kurties....   Special Offer kurties....)
            ],                               //Find the heels....Trending Product....Hot Summer....
                                            //New Arrivals.....Sponshed....
          ),
        ),
      ),
    );
  }
}
