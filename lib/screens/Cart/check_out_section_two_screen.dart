import 'package:e_commerse_new_design/screens/Cart/product_total_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckOutSectionTwoScreen extends StatelessWidget {
  const CheckOutSectionTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDeliveryAddressSection(context),
                        const SizedBox(height: 10),
                        _buildAddressDetailsSection(context),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            "Shopping List",
                            style: TextStyle(
                              fontSize: 20, // Add your text style here
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildProductList(context), // Additional sections or widgets go here...
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: const Text('CheckOut'),
      centerTitle: true,
      backgroundColor: Colors.white, // Set the background color to white
    );
  }

  Widget _buildDeliveryAddressSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(left: 15),
      child: const Row(
        children: [
          ProductListSectionItemWidget(
            imagePath: 'assets/images/delivery_icons.png',
            height: 20,
            width: 16,
            alignment: Alignment.topCenter,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Delivery Address",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

 
 Widget _buildAddressDetailsSection(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    width: double.maxFinite,
    child: Row(
      children: [
        Expanded(
          child: Material(
            color: Colors.white, //Set the Background Colours is White...
            elevation: 3.0, // Adjust the elevation as needed
            borderRadius: BorderRadius.circular(4), // Ensure the border radius matches the container
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white), // Example border color
                borderRadius: BorderRadius.circular(4), // Adjust the radius as needed
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 2),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "Address :",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        ProductListSectionItemWidget(
                          imagePath: 'assets/images/edit_images.png',
                          height: 15,
                          width: 15,
                          alignment: Alignment.topRight,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      "216 St Paul's Rd, London N 2LL, UK\nContact :  +44-784232",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 15), // Added space between the address section and the "+" icon
        Material(
          color: Colors.white, 
          elevation: 3.0, // Adjust the elevation as needed
          borderRadius: BorderRadius.circular(6), // Ensure the border radius matches the container
          child: Container(
            height: 82,
            width: 88,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white), // Example border color
              borderRadius: BorderRadius.circular(4), // Adjust the radius as needed
            ),
            child: const Stack(
              alignment: Alignment.center,
              children: [
                ProductListSectionItemWidget(
                  imagePath: 'assets/images/plus_icons.png',
                  height: 28,
                  width: 28,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildProductList(BuildContext context) {
    return SizedBox(
     width: double.maxFinite,
     child: ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
       shrinkWrap: true,
       separatorBuilder: (context, index) {
         return const SizedBox(height: 14,
         ); 
       },
       itemCount: 2,
       itemBuilder: (context,index) {
          return ProductTotalScreen();  ///This ProductTotalScreen Can Return The productTotal  mens...total calculation ..
       },
     ),
    );
  }
}

class ProductListSectionItemWidget extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final Alignment alignment;

  const ProductListSectionItemWidget({
    Key? key,
    required this.imagePath,
    required this.height,
    required this.width,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      child: imagePath.isNotEmpty
          ? Image.asset(
              imagePath,
              height: height,
              width: width,
              fit: BoxFit.cover, // Adjust the fit as per your requirement
            )
          : Image.asset(
              'assets/images/delivery_icons.png', // Replace with your placeholder image asset path
              height: 20,
              width: 20,
              fit: BoxFit.cover, // Adjust the fit as per your requirement
            ),
    );
  }
}
