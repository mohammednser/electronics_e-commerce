import 'package:carousel_slider/carousel_slider.dart';
import 'package:electronics_e_commerce/views/store_page.dart';
import 'package:electronics_e_commerce/views/widget/Item.dart';
import 'package:electronics_e_commerce/views/widget/custom_appbar.dart';
import 'package:electronics_e_commerce/views/widget/custom_notefication_icon.dart';
import 'package:flutter/material.dart';
import 'widget/Custom_menu_icon.dart';
import 'widget/custom_appbar.dart';
import 'widget/custom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/custum_tapbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        
        elevation: 0,
        title:  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: const [
              Icon(
                Icons.notifications,
                color: Colors.white70,
                size: 35,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 7,
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          )
        ]),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Center(
                  child: Image.asset(
                    "assets/images/Group 11094.png",
                    // height: 100,
                    width: 700,
                  ),
                ));
          },
        ),
      ),
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Container(
          padding: const EdgeInsets.only(left: 18.0),
          child: const Text(
            "Categories",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Poppins'),
          ),
        ),
        const SizedBox(height: 30),
        /*
        Container(
      
          height: 20,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            children:  [
              TextButton(
                
                     onPressed: () { 
                       Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const HomePage();
                          }));
                      },
                      child: Text(
                        "All",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 30),
              ),
             
             TextButton(onPressed: () {
               Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const StorePage();
                          }));
             }, child: 
              Text(
                "Ps5",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
              ),
             ),
             
              SizedBox(
                width: 30,
              ),
              Text(
                "Ps4",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Xbox one",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Xbox one X",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Xbox one A",
                style: TextStyle(
                    fontSize: 14, fontFamily: 'Poppins', color: Colors.white),
              ),
            ],
          ),
        ),
     */
    ///////////
      TapbarCustom(),
    /////////
       SizedBox(height: 30,),
       Row(
        
      //  padding: EdgeInsets.only(left: 18),
        children: [
          Padding(padding:  EdgeInsets.only(left: 18)),
        Container(
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(136, 69, 77, 90),
           
            ),
          height: 50,
          width: 290,
          padding: EdgeInsets.only(left: 18,right: 10),
           
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
       
    //  Padding(padding: EdgeInsets.only(left : 16)),
              Text("Search Prodects..",style: TextStyle(color: Colors.white, fontSize: 15),),
              
              
              Icon(Icons.search_sharp, color: Colors.white,)
            ],
          )
        ),
        SizedBox(width: 25,),
        Container(
          
          height: 49,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(136, 69, 77, 90),
       
            ),
              child: 
              Icon(Icons.settings,color: Colors.white,)
              //Image.asset('assets/images/setting.png',width: 10,height: 10,),   
        )
       ],)
      ,  SizedBox(height: 30,),
      
      
                      /////////////////////////
                      ///
            CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: MediaQuery.of(context).size.height / 2.0),
          items: [const item()])
           ] 
           ),
          

      );
    
    

      
     
    
      
    

  }

  //  Widget buildCard()=> Container(
  //   padding: EdgeInsets.only(left: 18),
  //     height: 400,
  //     width: 280,
  //   child: Column(
  //     children: [
  //       Image.asset('assets/images/ps5-photo.png'),
  //     ],
  //   ),
  //  // new Image.asset('assets/images/ps5.svg', width: 100.0, height: 100.0),
  //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
  //     color: Color.fromARGB(100, 69, 77, 90),
    
  //     ),
  //   );
}


//  Expanded(

//             child: Container(
//               padding: EdgeInsets.only(left:18,bottom: 20),
                 
//               child: ListView(
//             scrollDirection: Axis.horizontal,
//               children: [
                
//                 buildCard(),
//                 SizedBox(width: 10,),
//                 buildCard(),
//               ],
//           ),