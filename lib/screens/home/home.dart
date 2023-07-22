import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<Home> {
  List<bool> isSelectedList = List.generate(4, (index) => false);

  void _toggleSelection(int index) {
    setState(() {
        isSelectedList[index] = !isSelectedList[index];

        for (int i = 0; i < isSelectedList.length; i++) {
          if (i != index) {
            isSelectedList[i] = false;
          }
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F9),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/onboard3');
                          },
                          child: SvgPicture.asset(
                            'assets/svgs/drawericon.svg',
                            height: 18,
                            width: 25.71,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/highlight.svg',
                            height: 19,
                            width: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text("Explore",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold, fontSize: 32
                            ),),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          child: SvgPicture.asset(
                            'assets/svgs/chart.svg',
                            height: 44,
                            width: 44,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            width: 269,
                          height: 52,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(4/100),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFFFFFFF),
                              hintText: 'Looking for shoes',
                              hintStyle: GoogleFonts.poppins(
                                  color: Color(0xFF6A6A6A),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 26, right: 12),
                                child: Icon(Icons.search, color: Color(0xFF6A6A6A), size: 24,),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: BorderSide.none,

                              ),
                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 14,),
                      SvgPicture.asset(
                        'assets/svgs/filteringicon.svg',
                        height: 52,
                        width: 52,
                      ),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Text(
                    'Select Category', textAlign: TextAlign.start,
                    style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2B2B2B)
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => _toggleSelection(0),
                          child: Container(
                            width: 108,
                            child: Center(
                                child: Text(
                                  'All Shoes',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: isSelectedList[0] ? Colors.white : Colors.black),
                                )
                            ),
                            decoration: BoxDecoration(
                              color: isSelectedList[0] ? Color(0xFF0D6EFD) : Colors.white, // Change the color to your desired color
                              borderRadius: BorderRadius.circular(8), // Set the border radius to make the container rounded
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () => _toggleSelection(1),
                          child: Container(
                            width: 108,
                            child: Center(
                                child: Text(
                                  'Outdoor',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: isSelectedList[1] ? Colors.white : Colors.black),
                                )
                            ),
                            decoration: BoxDecoration(
                              color: isSelectedList[1] ? Color(0xFF0D6EFD) : Colors.white, // Change the color to your desired color
                              borderRadius: BorderRadius.circular(8), // Set the border radius to make the container rounded
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () => _toggleSelection(2),
                          child: Container(
                            width: 108,
                            child: Center(
                                child: Text(
                                  'Tennis',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: isSelectedList[2] ? Colors.white : Colors.black),
                                )
                            ),
                            decoration: BoxDecoration(
                              color: isSelectedList[2] ? Color(0xFF0D6EFD) : Colors.white, // Change the color to your desired color
                              borderRadius: BorderRadius.circular(8), // Set the border radius to make the container rounded
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () => _toggleSelection(3),
                          child: Container(
                            width: 108,
                            child: Center(
                                child: Text(
                                  'Running',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: isSelectedList[3] ? Colors.white : Colors.black),
                                )
                            ),
                            decoration: BoxDecoration(
                              color: isSelectedList[3] ? Color(0xFF0D6EFD) : Colors.white, // Change the color to your desired color
                              borderRadius: BorderRadius.circular(8), // Set the border radius to make the container rounded
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Shoes',
                      style: GoogleFonts.raleway(
                        fontSize: 16, fontWeight: FontWeight.w500
                      ),),
                      Text('see all',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF0D6EFD), fontSize: 12, fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 201,
                        width: 157,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 8, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.heart, size: 14.31,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset('assets/images/shoes1.png', width: 137, height: 97,),
                              ),
                              Text('BEST SELLER',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF0D6EFD))
                              ),
                              SizedBox(height: 4,),
                              Text('Nike Jordan',
                                  style: GoogleFonts.raleway(
                                      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF6A6A6A))
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Rp 302.000', style: GoogleFonts.poppins(
                                      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF2B2B2B))
                                  ),
                                  SvgPicture.asset(
                                    'assets/svgs/addicon.svg',
                                    height: 35.5,
                                    width: 34,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 201,
                        width: 157,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 8, bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FaIcon(FontAwesomeIcons.heart, size: 14.31,),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset('assets/images/shoes2.png', width: 137, height: 97,),
                              ),
                              Text('BEST SELLER',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF0D6EFD))
                              ),
                              SizedBox(height: 4,),
                              Text('Nike Air Max',
                                  style: GoogleFonts.raleway(
                                      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF6A6A6A))
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Rp 752.000', style: GoogleFonts.poppins(
                                      fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF2B2B2B))
                                  ),
                                  SvgPicture.asset(
                                    'assets/svgs/addicon.svg',
                                    height: 35.5,
                                    width: 34,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New Arrivals',
                        style: GoogleFonts.raleway(
                            fontSize: 16, fontWeight: FontWeight.w600
                        ),),
                      Text('see all',
                        style: GoogleFonts.poppins(
                            color: Color(0xFF0D6EFD), fontSize: 12, fontWeight: FontWeight.w500
                        ),)
                    ],
                  ),
                  SizedBox(height: 21,),
                  Stack(
                    children: [
                      Image.asset('assets/images/newArrivals.png', width: 360, height: 95,), // Replace 'image1.jpg' with your image asset path
                      Transform.translate(
                      offset: Offset(200, -20),// Move the second image 20 pixels to the left of the first image
                        child: Image.asset('assets/images/shoes3.png'), // Replace 'image2.jpg' with your image asset path
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal:40, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Summer Sale',
                                  style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w500, fontSize: 12, color: Color(0xFF3B3B3B)
                                  ),),
                              Text('15% OFF',
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w900, fontSize: 30, color: Color(0xFF674DC5)
                              ),),
                            ],
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
      )
    );
  }
}
