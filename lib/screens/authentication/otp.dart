import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);

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
                                Navigator.pushNamed(context, '/forgotpass');
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
                      Text("OTP Verification", textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Please Check Your Email To See The\nVerification Code", textAlign: TextAlign.center,
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
                  child: Text(
                    'OTP Code',
                    style: GoogleFonts.raleway(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2B2B2B)
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 56,
                        width: 70,
                        child:
                        TextField(
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF7F7F9),
                            hintText: '0',
                            hintStyle: GoogleFonts.poppins(
                                color: Color(0xFF6A6A6A),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,

                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 70,
                        child:
                        TextField(
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF7F7F9),
                            hintText: '0',
                            hintStyle: GoogleFonts.poppins(
                                color: Color(0xFF6A6A6A),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,

                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 70,
                        child:
                        TextField(
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF7F7F9),
                            hintText: '0',
                            hintStyle: GoogleFonts.poppins(
                                color: Color(0xFF6A6A6A),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,

                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56,
                        width: 70,
                        child:
                        TextField(
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF7F7F9),
                            hintText: '0',
                            hintStyle: GoogleFonts.poppins(
                                color: Color(0xFF6A6A6A),
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide.none,

                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    child: Text(
                      'Verify',
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
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Resend code to',
                          style: GoogleFonts.raleway(
                            color: Color(0xFF7D848D),
                            fontSize: 12,
                          )
                      ),
                      Text('00:30',
                          style: GoogleFonts.raleway(
                            color: Color(0xFF7D848D),
                            fontSize: 12,
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

