// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
 

 //this Page Indicate the WishList2...
import 'package:e_commerse_new_design/screens/Cart/check_out_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final Map<String, dynamic> product;

  // ignore: use_super_parameters
   const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
    final List<Map<String, dynamic>> products = [
    {'rating': 4.5},
    {'rating': 3.0},
    {'rating': 5.0},
    {'rating': 4.0},
  ];
  
  get index => null;
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 10),
            // _buildHeadBarSection(context),
            const SizedBox(height: 30),
             _buildImageAndSizeSection(context), 
            const SizedBox(height: 10),
            _buildProductDetailsSection(context,0),
            const SizedBox(height: 12),
            _buildViewSimilarSection(context),
            const SizedBox(height: 12),
            _buildSimilarProductsSection(context),
            const SizedBox(height: 12),
            _buildProductListSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProductDetailsSection(BuildContext context,int index) {

      // ignore: unnecessary_null_comparison
      if (products == null || products.isEmpty || index >= products.length) {
      return Container(
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: const Text("No product details available"),
      );
    }

    final double rating = products[index % products.length]['rating'] ?? 0;
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "NIke Sneakers",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            "Vision Alta Men's Shoes Size (All Colours)",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      const CustomRatingBar(
                        initialRating: 0,
                        itemSize: 18,
                      ),
                      ...List.generate(
                        5,
                        (i) => Icon(
                          i < rating.floor() ? Icons.star : Icons.star_border,
                          size: 16,
                          color: Colors.amber,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "56,898",
                         style:  TextStyle(
                         color: Color.fromRGBO(130, 130, 130, 1)
                       )
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                const SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        "₹2,999",
                       style:  TextStyle(
                         color: Colors.black,
                       )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "₹1,500",
                          style:  TextStyle(
                         color: Colors.black,
                       ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "50% off",  //background: rgba(250, 113, 137, 1);

                          style: TextStyle(color: Color.fromRGBO(250, 113, 137, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "Product Details",
                 style:  TextStyle(
                         color: Colors.black,
                         fontSize: 16,
                       )
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Perhaps the most iconic sneaker of all-time, this original Chicago colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the",
                        style:  TextStyle(
                         color: Colors.black,
                       )
                      ),
                      TextSpan(
                        text: " More",
                   style: TextStyle(color: Color.fromRGBO(250, 113, 137, 1)),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      _buildReturnPolicySection(
                        context,
                        imageTwo: "assets/images/nearby_images.png",
                        returnPolicy: "Nearest store",
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/near.png",
                              height: 16,
                              width: 16,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              "VIP",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: _buildReturnPolicySection(
                          context,
                          imageTwo: "assets/images/nearby_images.png",
                          returnPolicy: "Return policy",
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
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 136,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 36,
                        width: 136,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(4),
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(4),
                          ),
                          gradient: LinearGradient(
                            begin: const Alignment(0.5, -0.16),
                            end: const Alignment(0.5, 1.21),
                            colors: [Colors.blue[200]!, Colors.indigo[900]!],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            "Go to cart",
                            // style: Theme.of(context)
                            //     .textTheme
                            //      .button!
                            //     .copyWith(color: Colors.white),
                             style: const TextStyle()
                               // .textTheme
                               // .button!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Image.asset("assets/images/goto_cart.png"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 6),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 36,
                          width: 136,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(4),
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(4),
                            ),
                            gradient: LinearGradient(
                              begin: const Alignment(0.5, 0),
                              end: const Alignment(0.5, 1),
                              colors: [Colors.green[200]!, Colors.green[500]!],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48),
                          child: Text(
                            "Buy Now",
                            style: const TextStyle()
                               // .textTheme
                               // .button!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Image.asset("assets/images/buy_now.png"),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.only(left: 22, top: 4, bottom: 4),
            decoration: BoxDecoration( //background: rgba(255, 204, 213, 1);

              color: const Color.fromRGBO(255, 204, 213, 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  "Delivery in",
                  style:  TextStyle(
                         color: Colors.black,
                         fontSize: 25
                       )
                ),
                Text(
                  "1 within Hour",
                  style: TextStyle(color: Colors.black,
                  fontSize: 21,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewSimilarSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              icon: Image.asset(
                "assets/fonts/eyes_icons.png",
                height: 24,
                width: 24,
              ),
              label: const Text(
                "View Similar",
                style:  TextStyle(
                         color: Colors.black,
                       )
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 2),
          Expanded(
            child: OutlinedButton.icon(
              icon: Image.asset(
                "assets/fonts/add_compare.png",
                height: 24,
                width: 24,
              ),
              label: const Text(
                "Add to Compare",
                style:  TextStyle(
                         color: Colors.black,
                       )
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSimilarProductsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Similar To",
           style:  TextStyle(
                         color: Colors.black,
                         fontSize: 28,
                       )
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.maxFinite,
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children: List<Widget>.generate(
                3,
                (index) => const Chip(
                  label: Text("282+ items"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductListSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 244,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: 4,
            itemBuilder: (context, index) {
              return ProductListSectionItemWidget();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildReturnPolicySection(BuildContext context,
      {required String imageTwo, required String returnPolicy}) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageTwo,
            height: 16,
            width: 16,
          ),
          const SizedBox(width: 4),
          Text(
            returnPolicy,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

class CustomRatingBar extends StatelessWidget {
  final double initialRating;
  final double itemSize;

  const CustomRatingBar({super.key, required this.initialRating, required this.itemSize});

  @override
  Widget build(BuildContext context) {
    // Placeholder for CustomRatingBar implementation
    return Container();
  }
}


Widget _buildImageAndSizeSection(BuildContext context) {
  return Column(
    children: [
      // Image carousel
      Stack(
        children: [
          Image.asset(
            'assets/images/new_Shoes.png',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 0 ? Colors.red : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                AddreshCheckOutScreensTwo(context);
                  },
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
      // Size selector
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Size: 7UK',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: ['6 UK', '7 UK', '8 UK', '9 UK', '10 UK'].map((size) {
                return ChoiceChip(
                  label: Text(size),
                  selected: size == '7 UK',
                  onSelected: (bool selected) {
                    // Handle size selection
                  },  //background: rgba(250, 113, 137, 1);

                  selectedColor: const Color.fromRGBO(250, 113, 137, 1),
                  backgroundColor: Colors.grey[200],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ],
  );
}

void AddreshCheckOutScreensTwo(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const CheckOutScreen(),
    ),
  );
}

class ProductListSectionItemWidget extends StatelessWidget {
  const ProductListSectionItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder for ProductListSectionItemWidget implementation
    return Container();
  }
}