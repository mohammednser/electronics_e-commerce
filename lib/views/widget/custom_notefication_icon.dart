import 'package:flutter/material.dart';

class CustomNoteficationIcon extends StatelessWidget {
  const CustomNoteficationIcon({super.key, required this.icon});
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
