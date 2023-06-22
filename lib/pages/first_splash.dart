import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({super.key});

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () =>
          Navigator.pushNamedAndRemoveUntil(context, "menu", (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              'assets/swords.png',
              width: 140,
              height: 140,
            ),
          ),
          Text(
            "VENTURE",
            style: GoogleFonts.dmSerifDisplay(
              textStyle: const TextStyle(
                  color: Colors.white, fontSize: 32, letterSpacing: 10),
            ),
          ),
        ],
      ),
    );
  }
}
