
import 'package:electronics_e_commerce/views/widget/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfilePag extends StatefulWidget {
  const ProfilePag({super.key});

  @override
  State<ProfilePag> createState() => _ProfilePagState();
}

class _ProfilePagState extends State<ProfilePag> {
  
  
  int Index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Center(
            child: Text("Profile",
                style: GoogleFonts.getFont("Poppins",
                    fontSize: 25,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white))));
  }
}

 