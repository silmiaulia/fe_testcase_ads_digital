import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/onboard2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 453),
                Text("Let’s Start Journey\nWith Nike", textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    color: Color(0xFFECECEC),
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text("Smart, Gorgeous & Fashionable\nCollection Explor Now", textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Color(0xFFD8D8D8),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 124),
                ElevatedButton(
                  child: Text(
                    'Next',
                    style: GoogleFonts.raleway(color: Colors.black),
                  ),
                  // onPressed: login,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0)
                      )
                  ), onPressed: () {
                    Navigator.pushNamed(context, '/onboard3');
                },
                ),
              ],
            ),
          )
          // Image.asset('assets/images/onboard1.png')
        ],
      )
    );
  }
}
