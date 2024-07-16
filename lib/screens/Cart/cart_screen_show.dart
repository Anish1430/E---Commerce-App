import 'package:e_commerse_new_design/models/product_detail_screen.dart';
import 'package:flutter/material.dart';

class CartScreenShow extends StatelessWidget {
  const CartScreenShow({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    //    _buildHeader(),
        _buildProductGrid(context),
      ],
    );
  }
  Widget _buildProductGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 2,
        mainAxisSpacing: 5,
      ),
      itemCount: 12, // Adjust based on your actual item count
      itemBuilder: (context, index) {
        return _buildProductItem(context, index);
      },
    );
  }

  Widget _buildProductItem(BuildContext context ,int index) {
    // Sample data - replace with your actual data
    List<Map<String, dynamic>> products = [
      {
        'image': 'assets/images/black_winter.png',
        'title': 'Black Winter...',
        'subtitle': 'Autumn And Winter Casual cotton-padded jacket...',
        'price': '₹449',
        'rating': 4.0,
        'reviewCount': '6,890',
      },
      {
        'image': 'assets/images/mens_starry.png',
        'title': 'Mens Dotty',
        'subtitle': 'Mens Starry Sky Printed Shirt 100% Cotton Fabric .',
        'price': '₹399',
        'rating': 4.0,
        'reviewCount': '1,52,344',
      },
      {
        'image': 'assets/images/flare_dress.png',
        'title': 'Mens Dotty',
        'subtitle': 'Antheaa Black & Rust Orange Floral Print Tiered Midi F..',
        'price': '₹1,999',
        'rating': 4.0,
        'reviewCount': '3,35,566',
      },
      {
        'image': 'assets/images/pink_Earthen.png',
        'title': 'Mens Dotty',
        'subtitle': 'EARTHEN Rose Pink Embroidered Tiered Max.',
        'price': '₹19,90',
        'rating': 5.0,
        'reviewCount': '45,678',
      },
      {
        'image': 'assets/images/jordan_shoes.png',
        'title': 'Mens Dotty',
        'subtitle': "The classic Air Jordan 12 to create a shoe that's fres...",
        'price': '₹4,999',
        'rating': 4.0,
        'reviewCount': '10,23,456',
      },
      {
        'image': 'assets/images/denim_dress.png',
        'title': 'Mens Dotty',
        'subtitle': 'Blue cotton denim dress Look 2 Printed cotton dr.',
        'price': '₹999',
        'rating': 4.0,
        'reviewCount': '27,344',
      },
      {
        'image': 'assets/images/sony_ps4.png',
        'title': 'Mens Dotty',
        'subtitle': 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis...',
        'price': '₹1,999',
        'rating': 3.0,
        'reviewCount': '8,35,566',
      },
      {
        'image': 'assets/images/realme_phone.png',
        'title': 'Mens Dotty',
        'subtitle': '6 GB RAM | 64 GB ROM | Expandable Upto 256',
        'price': '₹3499',
        'rating': 4.0,
        'reviewCount': '3,44,567',
      },
      {
        'image': 'assets/images/dslr_image.png',
        'title': 'Mens Dotty',
        'subtitle': 'D7200 Digital Camera (Nikon) In New Area...D7200 Digital Camera (Nikon) In New Area...',
        'price': '₹26,999',
        'rating': 4.0,
        'reviewCount': '67,456',
      },
      {
        'image': 'assets/images/black_jacket.png',
        'title': 'Mens Dotty',
        'subtitle': 'This warm and comfortable jacket is great for learni',
        'price': '₹2,999',
        'rating': 4.0,
        'reviewCount': '2,23,569',
      },
      {
        'image': 'assets/images/muscle_gain_image.png',
        'title': 'Mens Dotty',
        'subtitle': 'NUTRITIONAL POWERHOUSE: MuscleBl...',
        'price': '₹3,999',
        'rating': 3.0,
        'reviewCount': '1,35,566',
      },
       {
        'image': 'assets/images/mens_shoes_images.png',
        'title': 'Mens Dotty',
        'subtitle': 'George Walker Derby Brown Formal Shoes',
        'price': '₹999',
        'rating': 5.0,
        'reviewCount': '13,45,678',
      },
      // Add more product data here
    ];
      //When we Clicked it will shows
   return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: products[index % products.length]),
          ),
        );
      },

       
    child: Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              products[index % products.length]['image'],
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products[index % products.length]['title'],
                  style: const TextStyle(fontSize: 16,
                   color: Colors.black,
                   fontWeight: FontWeight.bold),
                ),
                Text(
                  products[index % products.length]['subtitle'],
                  style: const TextStyle(fontSize: 10, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
                const SizedBox(height: 10),
                Text(
                  products[index % products.length]['price'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    ...List.generate(5, (i) => Icon(
                      i < products[index % products.length]['rating'].floor() 
                          ? Icons.star 
                          : Icons.star_border,
                      size: 16,
                      color: Colors.amber,
                    )),
                     const SizedBox(width: 6),
                    Text(
                       products[index % products.length]['reviewCount'],
                       style: const TextStyle(fontSize: 8, color: Color.fromRGBO(164, 169, 179, 1)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}