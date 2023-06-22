// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRating extends StatefulWidget {
  const FirstRating({super.key});

  @override
  State<FirstRating> createState() => _FirstRatingState();
}

class _FirstRatingState extends State<FirstRating> {
  bool emoji1 = false;
  bool emoji2 = false;
  bool emoji3 = false;
  bool emoji4 = false;
  String? rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 37, right: 37),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/pizza.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Pizza Ballado",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "\$90,00",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 90),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Was it delicious?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleButton(
                  image: "assets/emoji1.png",
                  onTap: () {
                    setState(() {
                      emoji1 = true;
                      emoji2 = false;
                      emoji3 = false;
                      emoji4 = false;
                      rating = "1";
                    });
                  },
                  color: emoji1
                      ? const Color(0xffEEF0FF)
                      : const Color(0xff37394D),
                ),
                CircleButton(
                  image: "assets/emoji2.png",
                  onTap: () {
                    setState(() {
                      emoji1 = false;
                      emoji2 = true;
                      emoji3 = false;
                      emoji4 = false;
                      rating = "2";
                    });
                  },
                  color: emoji2
                      ? const Color(0xffEEF0FF)
                      : const Color(0xff37394D),
                ),
                CircleButton(
                  image: "assets/emoji3.png",
                  onTap: () {
                    setState(() {
                      emoji1 = false;
                      emoji2 = false;
                      emoji3 = true;
                      emoji4 = false;
                      rating = "3";
                    });
                  },
                  color: emoji3
                      ? const Color(0xffEEF0FF)
                      : const Color(0xff37394D),
                ),
                CircleButton(
                  image: "assets/emoji4.png",
                  onTap: () {
                    setState(() {
                      emoji1 = false;
                      emoji2 = false;
                      emoji3 = false;
                      emoji4 = true;
                      rating = "4";
                    });
                  },
                  color: emoji4
                      ? const Color(0xffEEF0FF)
                      : const Color(0xff37394D),
                ),
              ],
            ),
            const SizedBox(height: 90),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff34D186),
                minimumSize: const Size(211, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              onPressed: () {
                print("Rating = $rating");
                Navigator.pushNamedAndRemoveUntil(
                    context, "menu", (route) => false);
              },
              child: Text(
                "Rate Now",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final Function() onTap;
  final String image;
  final Color color;
  const CircleButton({
    Key? key,
    required this.onTap,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          image,
          width: 28,
          height: 28,
        ),
      ),
    );
  }
}
