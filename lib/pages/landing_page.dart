import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300,
                  color: Color(0xff1D1E3C)),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Color(0xffFE998D)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    height: 40,
                    width: 72,
                  ),
                  Row(
                    children: [
                      navItem(title: 'Guides', index: 0),
                      SizedBox(
                        width: 46,
                      ),
                      navItem(title: 'Pricing', index: 1),
                      SizedBox(
                        width: 46,
                      ),
                      navItem(title: 'Team', index: 2),
                      SizedBox(
                        width: 46,
                      ),
                      navItem(title: 'Stories', index: 3),
                    ],
                  ),
                  Image.asset(
                    'button_account.png',
                    height: 53,
                    width: 163,
                  ),
                ],
              ),
              SizedBox(height: 76),
              Image.asset(
                'ilustrasi.png',
                width: 500,
              ),
              SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'Icon_down_solid.png',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
