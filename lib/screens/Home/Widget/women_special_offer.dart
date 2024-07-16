
// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class WomenSpecialOffer extends StatelessWidget {
  const WomenSpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildProductCard(
              image: 'assets/images/women_kurties.png',
              title: 'Women Printed Kurta',
              description: 'Neque porro quisquam est qui dolorem ipsum quia',
              price: '₹1500',
              discount: '40%OFF',
              originalPrice: '₹2999',
              rating: 4.5,
              reviewCount: 56890,
            )),
            const SizedBox(width: 12),
            Expanded(child: _buildProductCard(
              image: 'assets/images/hrs_shoes_image.png',
              title: 'HRX by Hrithik Roshan',
              description: 'Neque porro quisquam est qui dolorem ipsum quia',
              price: '₹2499',
              originalPrice: '₹4999',
              discount: '50%OFF',
              rating: 4.5,
              reviewCount: 344967,
            )),
          ],
        ),
           const SizedBox(height: 10),
          _buildSpecialOffersBanner(),
            const SizedBox(height: 10),
          _buildHeelsAndFlatBanner(),
          const SizedBox(height: 5),
          _buildTrendingProductsBanner(),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: _buildProductCardItems(
              image: 'assets/images/watch_images.png',
              title: 'IWC Schaffhausen\n'
                      '2021 Pilots Watch \n'
                      '"SIHH 2019" 44mm\n',
              price: '₹650',
              originalPrice: '₹1999',
              discount: '60%OFF',
            )),
            const SizedBox(width: 10),
            Expanded(child: _buildProductCardItems(
              image: 'assets/images/shoes_sneaker_images.png',
              title: 'Labbin White\n'
                     'Sneakers\n'
                      'For Men and Female',
              price: '₹650',
              originalPrice: '₹1250',
              discount: '70%OFF',
            )),
          ],
        ),
          const SizedBox(height: 10),
         _hotSummerProduct(),
         _buildNewArrivals(),
         const SizedBox(height: 10),
         _SponSerdBuild(),
      ],
    );
  }


  Widget _buildProductCard({
    required String image,
    required String title,
    required String description,
    required String price,
    String? originalPrice,
    required String discount,
    required double rating,
    required int reviewCount,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(image, fit: BoxFit.cover, height: 200),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                Text(description, style: const TextStyle(fontSize: 10, color: Color.fromRGBO(0, 0, 0, 1))),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
                    if (originalPrice != null) const SizedBox(width: 4),
                    if (originalPrice != null)
                      Text(
                        originalPrice,
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color.fromRGBO(128, 132, 136, 1),
                          fontSize: 12,
                        ),
                      ),
                    const Spacer(),
                    Container(
                      child: Text(
                        discount,
                        style: const TextStyle(color: Color.fromRGBO(254, 115, 92, 1), fontSize: 10),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    ...List.generate(5, (index) => Icon(
                      index < rating.floor() ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                      size: 16,
                    )),
                    const SizedBox(width: 6),
                    Text(
                      reviewCount.toString(),
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialOffersBanner() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(// Adjust width and height as per your image size requirements
            height: 70,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/special_offer_images.png'), // Replace with your image path
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special Offers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black, // Adjust text color
                  ),
                ),
                SizedBox(height: 4), // Add spacing
                Text(
                  'We make sure you get the \n' 
                  'offer you need at best prices',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 15, // Adjust font size
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingProductsBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 64,
          width: double.infinity,
          color: const Color.fromRGBO(253, 110, 135, 1), // Blue background color
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
                        'Trending Product',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.calendar_month, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'Last Date 29/02/22',
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
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(253, 110, 135, 1), // Blue background color
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
                        style: TextStyle(color: Colors.white, fontSize: 15),
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

  Widget _buildHeelsAndFlatBanner() {
    
    return Container(
      color: Colors.white, // Set your desired background color
      height: 240,
      width: 280,
      padding: const EdgeInsets.all(16.0), // Adjust padding as needed
      child: Row(
        children: [
          // Image of shoes on the left
          Expanded(
            child: Image.asset(
              'assets/images/yellow.png',
              height: 300,
              fit: BoxFit.contain, // Ensure the image fits within the available space
            ),
          ), //SizedBox(width: 0),
          Expanded(
            child: Image.asset(
              'assets/images/shoes_heels.png',
              height: 280,
              fit: BoxFit.contain, // Ensure the image fits within the available space
            ),
          ),
          
          const SizedBox(width: 15), // Add spacing between images
          // Image of flat and heels on the right
          Expanded(
            child: Image.asset(
              'assets/images/flat_heels_visit.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.contain, // Ensure the image fits within the available space
            ),
          ),
        ],
      ),
    );
  } 


  
   Widget _buildProductCardItems({
  required String image,
  required String title,
  required String price,
  String? originalPrice,
  required String discount,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 5,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 160,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    price,
                    style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.bold),
                  ),
                  if (originalPrice != null) ...[
                    const SizedBox(width: 5),
                    Text(
                      originalPrice,
                      style: const TextStyle(decoration: TextDecoration.lineThrough, color: Color.fromRGBO(128, 132, 136, 1), fontSize: 8),
                    ),
                  ],
                  const Spacer(),
                  Text(
                    discount,
                    style: const TextStyle(color: Color.fromRGBO(254, 115, 92, 1), fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
  

   Widget _hotSummerProduct() {
    return Container(
      color: Colors.white, // Set the background color to white
      child: ClipRRect(
        child: SizedBox(
          height: 210,
          width: 420, // Width of the image container
          child: Image.asset(
            'assets/images/hotSummer.png', // Replace with the actual image path
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

Widget _buildNewArrivals() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 64,
          width: double.infinity,
          color: Colors.white, // Blue background color
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
                        'New Arrivals',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            "Summer' 25 Collections",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 14,
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
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(253, 110, 135, 1), // Blue background color
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
                        style: TextStyle(color: Colors.white, fontSize: 15),
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

 
 Widget _SponSerdBuild() {
  return Container(
    height: 450, // Reduced height to match image proportions
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 10),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            'Sponserd',
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                
                Image.asset(
                  'assets/images/sponserd_images.png', // actual image path
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'up to 50% Off',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Icon(Icons.arrow_forward, 
              color: Colors.black, size: 20,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


