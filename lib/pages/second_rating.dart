// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRating extends StatefulWidget {
  const SecondRating({super.key});

  @override
  State<SecondRating> createState() => _SecondRatingState();
}

class _SecondRatingState extends State<SecondRating> {
  bool star1 = false;
  bool star2 = false;
  bool star3 = false;
  bool star4 = false;
  bool star5 = false;
  TextEditingController message = TextEditingController();
  String? rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 43, right: 43),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/office_illustration.png",
                width: 295,
                height: 210,
              ),
              const SizedBox(height: 50),
              Text(
                "Enjoy Your Meal",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color(0xff121622),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Please rate our experience",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xff808EAB),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 290,
                height: 50,
                child: Row(
                  children: [
                    //Note: Star 1
                    InkWell(
                      onTap: () {
                        setState(() {
                          star1 = true;
                          star2 = false;
                          star3 = false;
                          star4 = false;
                          star5 = false;
                          rating = "1";
                        });
                      },
                      child: Image.asset(
                        star1
                            ? "assets/star_active.png"
                            : "assets/star_deactive.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    //Note: Star 2
                    InkWell(
                      onTap: () {
                        setState(() {
                          star1 = true;
                          star2 = true;
                          star3 = false;
                          star4 = false;
                          star5 = false;
                          rating = "2";
                        });
                      },
                      child: Image.asset(
                        star2
                            ? "assets/star_active.png"
                            : "assets/star_deactive.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    //Note: Star 3
                    InkWell(
                      onTap: () {
                        setState(() {
                          star1 = true;
                          star2 = true;
                          star3 = true;
                          star4 = false;
                          star5 = false;
                          rating = "3";
                        });
                      },
                      child: Image.asset(
                        star3
                            ? "assets/star_active.png"
                            : "assets/star_deactive.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    //Note: Star 4
                    InkWell(
                      onTap: () {
                        setState(() {
                          star1 = true;
                          star2 = true;
                          star3 = true;
                          star4 = true;
                          star5 = false;
                          rating = "4";
                        });
                      },
                      child: Image.asset(
                        star4
                            ? "assets/star_active.png"
                            : "assets/star_deactive.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    //Note: Star 5
                    InkWell(
                      onTap: () {
                        setState(() {
                          star1 = true;
                          star2 = true;
                          star3 = true;
                          star4 = true;
                          star5 = true;
                          rating = "5";
                        });
                      },
                      child: Image.asset(
                        star5
                            ? "assets/star_active.png"
                            : "assets/star_deactive.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              TextFormField(
                maxLines: 4,
                controller: message,
                decoration: InputDecoration(
                  hintText: "Your message",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xff808EAB),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF1F1F1),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4074E6),
                  minimumSize: const Size(319, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                onPressed: () {
                  print("Rating = $rating - Message = ${message.text}");
                  Navigator.pushNamedAndRemoveUntil(
                      context, "menu", (route) => false);
                },
                child: Text(
                  "Submit Review",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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
