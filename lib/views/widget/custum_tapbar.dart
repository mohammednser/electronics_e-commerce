import 'package:electronics_e_commerce/views/home_page.dart';
import 'package:electronics_e_commerce/views/store_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TapbarCustom extends StatefulWidget {
  const TapbarCustom({super.key});

  @override
  State<TapbarCustom> createState() => _TapbarCustomState();
}

class _TapbarCustomState extends State<TapbarCustom> {

   List<String> items = [
    "ALL",
    "PS5",
    "PS4",
    "Xbox one",
    "Xbox one X",
    "Xbox one X",
  ];

  List<Widget> pages=[
    HomePage(),
    StorePage(),
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
 width: double.infinity,
        height: 40,
        margin: const EdgeInsets.only(left:16),
        child: Column(
          children: [
            
            /// CUSTOM TABBAR
            SizedBox(
            
              width: double.infinity,
              height: 30,
              child: ListView.builder(
                
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  
                  itemBuilder: (ctx, index) {
                    return Column(
                      
                      children: [
                Padding(padding: EdgeInsets.symmetric(horizontal:36)),       
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          
                              child: Text(
                                
                                items[index],
                                style: GoogleFonts.getFont("Poppins",
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ),
                          
                        
                        
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 pages[current]
                 
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}