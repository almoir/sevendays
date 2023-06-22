import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricing extends StatefulWidget {
  const FirstPricing({super.key});

  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/crown_icon.png",
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 48),
            Text(
              "Which one you wish\nto Upgrade?",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: const Color(0xff191919),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ItemMenu(
              index: 0,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              imageUrl: "assets/pig_icon.png",
              title: "Money Security",
              subtitle1: "support ",
              subtitle2: "24/7",
            ),
            ItemMenu(
              index: 1,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              imageUrl: "assets/paper_icon.png",
              title: "Automation",
              subtitle1: "we provide ",
              subtitle2: "Invoice",
            ),
            ItemMenu(
              index: 2,
              selectedIndex: selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              imageUrl: "assets/dollar_icon.png",
              title: "Balance Report",
              subtitle1: "can up to ",
              subtitle2: "10k",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5, left: 30),
              child: Text(
                "Upgrade Now",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 5, left: 60),
              child: IconButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, "menu", (route) => false),
                icon: const Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            label: '',
          ),
        ],
        backgroundColor: const Color(0xff6050E7),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final Function()? onTap;
  final String imageUrl;
  final String title;
  final String? subtitle1;
  final String? subtitle2;
  final int index;
  final int selectedIndex;

  const ItemMenu({
    Key? key,
    this.onTap,
    required this.imageUrl,
    required this.title,
    required this.index,
    required this.selectedIndex,
    this.subtitle1,
    this.subtitle2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 17, right: 26),
        margin: const EdgeInsets.only(bottom: 24),
        width: 315,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(39),
          border: Border.all(
            color: selectedIndex == index
                ? const Color(0xff6050E7)
                : const Color(0xffD9DEEA),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imageUrl,
              width: 66,
              height: 61,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
                const SizedBox(height: 2),
                RichText(
                  text: TextSpan(
                    text: subtitle1,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: const Color(0xffA3A8B8),
                    ),
                    children: [
                      TextSpan(
                        text: subtitle2,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color(0xff5343C2),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 41),
            selectedIndex == index
                ? Image.asset(
                    "assets/purple_check.png",
                    width: 26,
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
