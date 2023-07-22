import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/onboard1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text("WELCOME TO\nNIKE", textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 535),
                ElevatedButton(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.raleway(color: Colors.black),
                  ),
                  // onPressed: login,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0)
                      )
                  ), onPressed: () {
                    Navigator.pushNamed(context, '/onboard2');
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
