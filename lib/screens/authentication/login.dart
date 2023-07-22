import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  @override
  LoginForm createState() => LoginForm();
}

class LoginForm extends State<Login> {
  bool _isObscured = true;

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
                                Navigator.pushNamed(context, '/onboard3');
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
                    Text("Hello Again!", textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text("Fill Your Details Or Continue With\nSocial Media", textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color(0xFF707B81),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                          color: Color(0xFF2B2B2B)
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF7F7F9),
                        hintText: 'loremipsum@gmail.com',
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
                    const SizedBox(height: 10),
                    Text(
                      'Password',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2B2B2B)
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      obscureText: _isObscured,
                      obscuringCharacter: '\u2022',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF7F7F9),
                        hintText: '\u2022\u2022\u2022\u2022\u2022\u2022\u2022\u2022',
                        hintStyle: GoogleFonts.poppins(
                          color: Color(0xFF6A6A6A),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            !_isObscured ? Icons.visibility : Icons.visibility_off,
                            color: const Color(0xFF6A6A6A),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/onboard3');
                  },
                  child: Text('Recovery Password', textAlign: TextAlign.right,
                    style: GoogleFonts.raleway(
                      color: Color(0xFF707B81),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              Center(
                child: ElevatedButton(
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.raleway(color: Colors.white),
                  ),
                  // onPressed: login,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0D6EFD),
                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0)
                      )
                  ), onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                ),
              ),
              const SizedBox(height: 12,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/google.svg',
                          height: 22,
                          width: 22,
                        ),
                        const SizedBox(width: 14,),
                        Text(
                          'Sign In With Google',
                          style: GoogleFonts.raleway(color: Colors.black),
                        ),
                      ]
                    ),
                    // onPressed: login,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF7F7F9),
                        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0)
                        )
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                      },
                  ),
                ),
              ),
              const SizedBox(height: 135),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/register');
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'New User? ',
                          style: GoogleFonts.raleway(
                            color: Color(0xFF6A6A6A),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Create Account',
                          style: GoogleFonts.raleway(
                            color: Color(0xFF1A1D1E),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
