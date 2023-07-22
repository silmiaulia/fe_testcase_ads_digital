import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/onboard/onboard1_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(milliseconds: 1300)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => Onboard1(),
          ),
              (route) => false);
    });
    return Scaffold(
      backgroundColor: Color(0xFF0D6EFD),
      body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 341,
                ),
                Container(
                // Set height and width of the container
                height: 54, // Set the desired height
                width: 157,  // Set the desired width
                decoration: BoxDecoration(
                  // Use BoxDecoration to set the background image
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'), // Replace with the actual asset path
                    fit: BoxFit.cover, // Use BoxFit to control how the image fits inside the container
                  ),
                )
                ),
                // Image.asset('assets/images/logo.png'
                // height: 54, weight),
                Text("NIKE",
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
      )
    );
  }
}
