import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPricing extends StatelessWidget {
  const SecondPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/background_pricing.png"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 28, right: 28),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/pricing_illustration.png",
                    width: 164,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "Pro Features",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Unlock the winner modules\nand get more insights",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff7F7FAD),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                listBenefits("Unlock Our Top Charts"),
                listBenefits("Save More than 1,000 Docs"),
                listBenefits("24/7 Customer Support"),
                listBenefits("Track Company’s Spending"),
                const SizedBox(height: 32),
                subscribeButton(
                  () => Navigator.pushNamedAndRemoveUntil(
                      context, "menu", (route) => false),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "menu", (route) => false);
                  },
                  child: Text(
                    "Contact Support",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  subscribeButton(Function() onPressed) {
    return SizedBox(
      width: 319,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
          shadowColor: const Color(0xffE57C73),
          elevation: 25,
          backgroundColor: const Color(0xffE57C73),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(left: 80, right: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subscribe Now",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              Image.asset("assets/btn_arrow.png", width: 41),
            ],
          ),
        ),
      ),
    );
  }
}

listBenefits(String description) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 27),
    child: Row(
      children: [
        Image.asset(
          "assets/orange_check.png",
          width: 26,
        ),
        const SizedBox(width: 12),
        Text(
          description,
          style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
        ),
      ],
    ),
  );
}
