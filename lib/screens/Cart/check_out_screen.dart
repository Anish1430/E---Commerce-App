// ignore_for_file: use_super_parameters

import 'package:e_commerse_new_design/screens/Cart/check_out_section_two_screen.dart';
import 'package:flutter/material.dart';
class CheckOutScreen extends StatelessWidget {
  // ignore: duplicate_ignore
  // ignore: use_super_parameters


  //This CheckOut screen is the First Checkout screen....... 
  const CheckOutScreen({Key? key}) : super(key: key);

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
              const SizedBox(height: 12,),
              Expanded(
                child: SingleChildScrollView(
                 child: Column(
                  children: [
_buildPersonalDetailsSection(context),
                        const SizedBox(height: 20),
  _buildEmailSection(context),
  const SizedBox(height: 15),
  _buildPasswordSection(context),
 const SizedBox(height: 12),
 _buildChangePasswordSection(context),
 const SizedBox(height: 22),
 _buildPincodesection(context),
 const SizedBox(height: 15),
 _buildAddresssection(context),
 const SizedBox(height: 15),
 _buildCitySection(context),
 const SizedBox(height: 15),
 _buildStateSection(context),
  const SizedBox(height: 14),
 _buildCountrySection(context),
  const SizedBox(height: 15),
 _buildBankAccountDetailsSection(context),
 const SizedBox(height: 15),
  _buildBankAccountNumberSection(context),
 const SizedBox(height: 15),
 _buildIfscCodeSection(context)

                  ],
                 ),
              ),
              )
            ],
           ),
         ),
         ),
      bottomNavigationBar: _buildSaveButton(context),
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


  Widget _buildPersonalDetailsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(
        left: 16,
        right: 18,
      ),
      padding: const EdgeInsets.only(left: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 98,
              width: 102,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/avatar_home.png', // Replace with your image path
                      height: 96,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.edit, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 35),
          const Text(
            "Personal Details",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }


Widget  _buildEmailSection(BuildContext context) {
  return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Email Address",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Hello@NestorBird",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 4.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
  }


   Widget  _buildPasswordSection(context){
   return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Password",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "*********",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 4.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
}

  Widget _buildChangePasswordSection(BuildContext context){
    return Container(
       width: double.maxFinite,
       margin: const EdgeInsets.only(left: 16,right: 18,
       ),
       padding: const EdgeInsets.symmetric(horizontal: 4),
       child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text("Change Password",
            style: TextStyle(
                color: Color.fromRGBO(248, 55, 88, 1),
            ),
            ),
          ),
          SizedBox(height: 30),
          Text("Business Address Details",
          style: TextStyle(color: Colors.black,
           fontSize: 20,
          ),
          ),
        ],
       ),
    );
  }


  Widget _buildPincodesection(context){
      return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Pin Code",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "450116",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 5.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
  }


  Widget _buildAddresssection(BuildContext context){
     return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Address",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "216 st Paul's Rd",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 5.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
}


 Widget _buildCitySection(BuildContext context) {
     return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "City",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "London",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 5.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
 }

   Widget  _buildStateSection(BuildContext context) {
         return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "State",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "2I LL",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                ),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 5.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
   }


   Widget   _buildCountrySection(BuildContext  context) {
        return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Country",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "United Kingdom",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 4.0, // Border width
                  ),
              ),
            ),
              
           ),
           
           ),
            const SizedBox(height: 30),
          const Text("Bank Account Details",
          style: TextStyle(color: Colors.black,
           fontSize: 20,
          ),
          ),
        ],
      ),
    );
   }

    Widget   _buildBankAccountDetailsSection(BuildContext  context) {
        return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "bank Account Number",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "20435679XXXXXXXX",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 4.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
   }

    Widget   _buildBankAccountNumberSection(BuildContext  context) {
       return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Account Holder's Name",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "NestorBird User",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 4.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
   }

    Widget   _buildIfscCodeSection(BuildContext  context) {
       return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "IFSC CODE",
             style: TextStyle(color: Colors.black,
             fontSize: 12),
          ),
          const SizedBox(height: 8),
           Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
             padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "SBINO228O",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Colors.black, // Border color
                    width: 4.0, // Border width
                  ),
              ),
            ),
           ),
           ),
        ],
      ),
    );
   }

     
     Widget _buildSaveButton(BuildContext context) {
  return Container(
    width: double.maxFinite,
    margin: const EdgeInsets.only(
      left: 24,
      right: 24,
      bottom: 56,
    ),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CheckOutSectionTwoScreen(), //Go to the CheckOut ScreenTwo means
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(248, 55, 88, 1), // Button color
        minimumSize: const Size(double.infinity, 52), // Button height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
      ),
      child: const Text(
        'Save',
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: 16, // Text size
        ),
      ),
    ),
  );
}
}