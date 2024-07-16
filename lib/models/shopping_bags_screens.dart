import 'package:flutter/material.dart';

class ShoppingBagScreen extends StatelessWidget {
  const ShoppingBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBarShoppinBag(context),
        body: Form( ///Starts with ..if you need Column then used Inside the Children..the..something.
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: const Column(
              children: [
                SizedBox(height: 12),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      //  _buildDeliveryAddressSectionShoppinBag(context),
                        SizedBox(height: 10),
                       // _buildAddressDetailsSectionShoppinBag(context),
                        SizedBox(height: 16),
                    //    _buildProductListShoppinBag(context), // Additional sections or widgets go here...
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildSaveButton(context),
      ),
    );
  }




PreferredSizeWidget _buildAppBarShoppinBag(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: const Text('Shoping Bag'),
    centerTitle: true,
    backgroundColor: Colors.white, // Set the background color to white 
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Image.asset(
          'assets/fonts/shopping_heart.png', //  image path
          height: 40,
          width: 40,
        ),
      ),
    ],
  );
}



}