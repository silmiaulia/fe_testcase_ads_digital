import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/authentication/login.dart';
import 'package:untitled/screens/authentication/otp.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF7F7F9),
                      ),
                      // Optionally, add child widgets inside the circle
                      child: Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20,)
                          )
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Forgot Password", textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Enter Your Email Account To Reset\nYour Password", textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color(0xFF707B81),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF7F7F9),
                          hintText: 'xxxxxxxx',
                          hintStyle: GoogleFonts.poppins(
                              color: Color(0xFF6A6A6A),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide.none,

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.raleway(color: Colors.white),
                    ),
                    // onPressed: login,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0D6EFD),
                        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0)
                        )
                    ), onPressed: () {
                    _checkingScreen(context);
                  },
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}


void _checkingScreen(BuildContext context) {
  Future.delayed(Duration(milliseconds: 1500)).then((value) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => OTP(),
        ),
            (route) => false);
  });

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Add a circular border radius
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min, // Set the column to occupy minimum space
          children: [
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF0D6EFD),
                  ),
                  // Optionally, add child widgets inside the circle
                  child: Center(
                      child: SvgPicture.asset(
                        'assets/svgs/envelope.svg',
                        height: 22,
                        width: 22,
                      ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24), // Add spacing between the image and text
            Text(
              'Check your email',
              style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We have send password recovery code in your email', textAlign: TextAlign.center,
              style: GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xFF707B81)),
            ),
          ],
        ),
        actions: [

        ],
      );
    },
  );
}