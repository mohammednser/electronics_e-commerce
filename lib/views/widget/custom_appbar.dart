import 'package:flutter/material.dart';
import 'Custom_menu_icon.dart';
import 'custom_notefication_icon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,  required this.iconstart,required this.iconend});
 final IconData iconstart;
 final IconData iconend;
  @override
  Widget build(BuildContext context) {
    return Padding(
    
      padding:const EdgeInsets.only(top: 50,left:18,right: 18),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        children:  [
          
         // Spacer(),
    
         CustomMenuIcon(
         icon:iconend,
         ),
    
         CustomNoteficationIcon(
          icon : iconstart,
         )
        ],
      ),
    );
  }
}