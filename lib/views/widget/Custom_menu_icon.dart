import 'package:flutter/material.dart';

class CustomMenuIcon extends StatelessWidget {
  const CustomMenuIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Icon(
          icon,
          size: 30,
          color: Colors.white,
          );
      
    
  }
}
