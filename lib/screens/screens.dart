import 'package:electronics_e_commerce/views/home_page.dart';
import 'package:electronics_e_commerce/views/profile_page.dart';
import 'package:electronics_e_commerce/views/store_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
     HomePage(),
     ProfilePag(),
     ProfilePag(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
      backgroundColor: Color.fromARGB(255, 29, 31, 36),
     
       body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        // borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(25)),
        decoration: BoxDecoration(
         // color: Color.fromARGB(125, 16, 17, 20),
         color: const Color(0xFF333742),
          borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.0),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color.fromARGB(255, 29, 31, 36),
             //  tabBackgroundColor: Color.fromARGB(0, 51, 55, 66),
              color: Colors.white, 
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.shoppingBag,
                  text: 'Store',
                ),
               
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
       );
    
  }
}