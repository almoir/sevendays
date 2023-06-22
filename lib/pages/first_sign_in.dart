// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignIn extends StatefulWidget {
  const FirstSignIn({super.key});

  @override
  State<FirstSignIn> createState() => _FirstSignInState();
}

class _FirstSignInState extends State<FirstSignIn> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 40,
            right: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/coin_icon.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(height: 70),
              Text(
                "Welcome back.\nLet’s make money.",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 70),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  hintText: "Email",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xff6F7075),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: isHidden,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    icon: isHidden
                        ? const Icon(
                            Icons.visibility_outlined,
                            color: Color(0xff6F7075),
                          )
                        : const Icon(
                            Icons.visibility_off_outlined,
                            color: Color(0xff6F7075),
                          ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xff262A34),
                  filled: true,
                  hintText: "Password",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xff6F7075),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 6),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "menu", (route) => false);
                  },
                  child: Text(
                    "Forgot My Password",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff6A6B70),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 117),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    backgroundColor: const Color(0xffFCAC15),
                    minimumSize: const Size(295, 55),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "menu", (route) => false);
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.openSans(
                      color: const Color(0xff6B4909),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have account?  ",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamedAndRemoveUntil(
                              context, "menu", (route) => false),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
