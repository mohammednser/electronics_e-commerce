import 'package:electronics_e_commerce/views/home_page.dart';
import 'package:electronics_e_commerce/views/profile_page.dart';
import 'package:electronics_e_commerce/views/store_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../views/widget/custom_appbar.dart';
import '../views/widget/custom_navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State <MainScreen> createState() =>  MainScreenState();
}

class  MainScreenState extends State <MainScreen> {
  int _currentIndex = 0;
    static  final List<Widget> _widgetOptions = <Widget>[
   const HomePage(),
   const StorePage(),
    const ProfilePag(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(100, 51, 55, 66),
     body: Column(children: [
        // CustomAppBar(
        //   iconend: Icons.menu,
        //   iconstart: Icons.notification_add,
        // ),
        const SizedBox(
          height: 40,
        ),
Expanded(child: _currentIndex == 0 ? _widgetOptions[0] : _currentIndex == 1 ? _widgetOptions[1] : _widgetOptions[2])
      ],
      ),
      
      
           bottomNavigationBar:   Container(
          height: 62,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            color: Color(0xFF454D5A),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _currentIndex == 0
                    ? Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 101,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Color(0xFF333742),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    width: 15,
                                  ),
                                 Icon(Icons.home),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                   'Home',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 0;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF454D5A),
                              elevation: 0,
                              primary: Colors.transparent,
                              foregroundColor: Colors.black12,
                            ),
                            child:   Icon(Icons.home),
                          ),
                        ),
                      ),
          
                _currentIndex == 1
                    ? Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Color(0xFF333742),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  width: 15,
                                ),
                                 Icon(Icons.store),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Store',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF454D5A),
                              elevation: 0,
                              primary: Colors.transparent,
                              foregroundColor: Colors.black12,
                            ),
                            child:  const Icon(Icons.shopping_bag),
                          ),
                        ),
                      ),

                _currentIndex == 2
                    ? Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 101,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Color(0xFF333742),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  width: 15,
                                ),
                               Icon(Icons.person),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Person' ,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF454D5A),
                              elevation: 0,
                              primary: Colors.transparent,
                              foregroundColor: Colors.black12,
                            ),
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        )

      );
  }
}