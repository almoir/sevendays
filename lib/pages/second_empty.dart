import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondEmpty extends StatelessWidget {
  const SecondEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/second_illustration.png",
                width: 375,
                height: 454,
              ),
            ),
            const SizedBox(height: 65),
            Text(
              "Boost Profit!",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60),
            Text(
              "Our tools are helping business\nto grow much faster",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "menu", (route) => false);
              },
              child: Image.asset(
                "assets/rocket_button.png",
                width: 65,
              ),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
