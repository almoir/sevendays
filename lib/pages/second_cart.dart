import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondCart extends StatelessWidget {
  const SecondCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/cover.png",
              // width: double.infinity,
              // height: 436,
            ),
            const SizedBox(height: 20),
            Text(
              "Arrina La",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            Text(
              "Bali, Dekat Bandung",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: const Color(0xff2F323A),
              ),
            ),
            const SizedBox(height: 26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Pantai Pandawa adalah salah satu para\nkawasan wisata di area Kuta selatan sana\nKabupaten Dekat Bandung, Bali.",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: const Color(0xff2F323A),
                  ),
                ),
                const SizedBox(height: 26),
                Text(
                  "Booking Now",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DateCard(
                      days: 'MON',
                      date: "16 JAN",
                      available: true,
                    ),
                    DateCard(
                      days: 'TUE',
                      date: "17 JAN",
                      available: true,
                    ),
                    DateCard(
                      days: 'WED',
                      date: "18 JAN",
                      available: true,
                    ),
                    DateCard(
                      days: 'THU',
                      date: "19 JAN",
                      available: true,
                    ),
                    DateCard(
                      days: 'FRI',
                      date: "20 JAN",
                      available: true,
                    ),
                    DateCard(
                      days: 'SAT',
                      date: "21 JAN",
                      available: false,
                    ),
                    DateCard(
                      days: 'SUN',
                      date: "22 JAN",
                      available: true,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$22,800",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: const Color(0xff3F6DF6),
                        ),
                      ),
                      Text(
                        "/night",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: const Color(0xff2F323A),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 31),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(220, 60),
                        backgroundColor: const Color(0xff3F6DF6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, 'menu', (route) => false);
                      },
                      child: Text(
                        "Continue",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: const Color(0xffFAFAFA),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}

class DateCard extends StatefulWidget {
  final String days;
  final String date;
  final bool available;
  const DateCard({
    Key? key,
    required this.days,
    required this.date,
    required this.available,
  }) : super(key: key);

  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
  bool isChoose = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (widget.available == true) {
            isChoose = !isChoose;
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          color: widget.available ? Colors.white : const Color(0xffF4F4F6),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            isChoose
                ? Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/checkbox.png",
                      width: 27,
                      height: 25,
                    ),
                  )
                : Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/checkbox.png",
                      width: 27,
                      height: 25,
                      color: Colors.transparent,
                    ),
                  ),
            Text(
              widget.days,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.date,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: const Color(0xffA8ACB6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
