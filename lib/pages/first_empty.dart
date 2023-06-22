import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstEmpty extends StatelessWidget {
  const FirstEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 148, left: 69, right: 69),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/illustration.png",
                width: 240,
                height: 210,
              ),
            ),
            const SizedBox(height: 100),
            Text(
              "Success Order",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: const Color(0xff0E1954),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "We will delivery your package\nas soon as possible",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xff0E1954),
              ),
            ),
            const SizedBox(height: 65),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 55),
                backgroundColor: const Color(0xffF94593),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "menu", (route) => false);
              },
              child: Text(
                "Done",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xffF8F8F8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
