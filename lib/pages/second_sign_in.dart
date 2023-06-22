import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSignIn extends StatelessWidget {
  const SecondSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 64, left: 65 - 28, right: 65 - 28),
                  child: Image.asset(
                    "assets/paper_icon.png",
                    width: 245,
                    height: 279,
                  ),
                ),
              ),
              const SizedBox(height: 53),
              Text(
                "Email Address",
                style: GoogleFonts.openSans(
                  color: const Color(0xff17171A),
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF3F3F3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(71),
                      borderSide: BorderSide.none),
                ),
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xff17171A),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Password",
                style: GoogleFonts.openSans(
                  color: const Color(0xff17171A),
                ),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF3F3F3),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(71),
                      borderSide: BorderSide.none),
                ),
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xff17171A),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(320, 55),
                  backgroundColor: const Color(0xff5468FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "menu", (route) => false);
                },
                child: Text(
                  "Log In",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: const Color(0xffF8F8F8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(320, 55),
                    backgroundColor: const Color(0xffF8F8F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                      side: const BorderSide(
                        color: Color(0xffD3D3D3),
                      ),
                    ),
                    shadowColor: Colors.transparent),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, "menu", (route) => false),
                child: Text(
                  "Create New Account",
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: const Color(0xffCFCFCF),
                  ),
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
