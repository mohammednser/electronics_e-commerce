
import 'package:electronics_e_commerce/views/home_page.dart';
import 'package:electronics_e_commerce/views/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../store_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});


  
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
   final int _selectedIndex = 0;
  
  static  final List<Widget> _widgetOptions = <Widget>[
   const HomePage(),
   const StorePage(),
    const ProfilePag(),
  ];
 
   
  @override
  Widget build(BuildContext context) {
_widgetOptions.elementAt(_selectedIndex);
    return  
     // body: Center( child: _widgetOptions.elementAt(_selectedIndex),),
    
     //  _widgetOptions.elementAt(_selectedIndex)
            Container(
            
             decoration: const BoxDecoration(borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(25)),
              color: Color.fromARGB(100, 69, 77, 90),
               
             ),

             //  color: Color.fromARGB(100, 69, 77, 90),
               
             child:const Padding(
               padding: EdgeInsets.symmetric(horizontal:16.0,vertical: 10),
               child: GNav(
                //  backgroundColor: Color.fromARGB(100, 69, 77, 90),
                duration: Duration(milliseconds: 400),
                gap: 8,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(125, 16, 17, 20),
                 padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon:Icons.home,
                    text: 'Home',
                    ),
                    GButton(
                    icon:Icons.store,
                    text: 'Store',
                    ),
                    GButton(
                    icon:Icons.person_2,
                    text: 'Profile',
                    ),
                 
               ],
            
               
               ),
             ),
    
     

          
        );

    
      
    
  }
}
  
 


  

