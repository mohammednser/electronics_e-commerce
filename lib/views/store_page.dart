
import 'package:electronics_e_commerce/screens/screens.dart';
import 'package:electronics_e_commerce/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/Ps5Item.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 31, 36),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 31, 36),
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
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 20,
            ),
            Expanded(
              child: SizedBox(
                // width: MediaQuery.of(context).size.width / .2,
                height: MediaQuery.of(context).size.height / 20,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Screens();
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {
                         Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const StorePage();
                            }));
                      },
                      child: Text(
                        "PS5",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "PS4",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //  fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "xbox one",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "xbox one X",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "xbox one Y",
                        style: GoogleFonts.getFont("Poppins",
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 1.25,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 300,
                ),
                itemBuilder: (context, index) {
                  return Ps5item();
                }))
      ]),
    );
  }
}
