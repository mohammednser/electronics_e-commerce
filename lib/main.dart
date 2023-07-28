import 'package:electronics_e_commerce/screens/main_screen.dart';
import 'package:electronics_e_commerce/screens/screens.dart';
import 'package:electronics_e_commerce/views/home_page.dart';
import 'package:electronics_e_commerce/views/store_page.dart';
import 'package:electronics_e_commerce/views/widget/SelByPs5.dart';
import 'package:electronics_e_commerce/views/widget/VeiwProdact.dart';
import 'package:electronics_e_commerce/views/widget/custom_navbar.dart';
import 'package:flutter/material.dart';

import 'views/profile_page.dart';
import 'views/widget/Ps5Item.dart';
import 'views/store_page.dart';
import 'views/widget/item_details.dart';

void main() {
  runApp(const Electronics_eCommerce());
}

// ignore: camel_case_types
class  Electronics_eCommerce extends StatelessWidget {
  const  Electronics_eCommerce({super.key});
 //  brightness: Brightness.dark,
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF333742),
       fontFamily:'Poppins'
         ),
      home: const Screens(), 
    );
  }
}
