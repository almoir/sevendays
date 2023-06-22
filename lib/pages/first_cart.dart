import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstCart extends StatefulWidget {
  const FirstCart({super.key});

  @override
  State<FirstCart> createState() => _FirstCartState();
}

class _FirstCartState extends State<FirstCart> {
  // int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.only(top: 36, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "My Shopping Cart",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: const Color(0xff191919),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const CartList(
                imageUrl: "assets/burger.png",
                title: "Burger Malleta",
                resto: "McTheone",
                price: 90,
              ),
              const SizedBox(height: 26),
              const CartList(
                imageUrl: "assets/mojito.png",
                title: "Mojito Orange",
                resto: "The Bar",
                price: 90,
              ),
              const SizedBox(height: 26),
              infoCard(),
              const SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFC532),
                  minimumSize: const Size(327, 60),
                  shadowColor: const Color(0xffFFC532),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "menu", (route) => false);
                },
                child: Text(
                  "Checkout Now",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: const Color(0xff2E221B),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD9D9D9),
                  minimumSize: const Size(327, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(53),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "menu", (route) => false);
                },
                child: Text(
                  "Save To Wishlist",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
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

  Container infoCard() {
    return Container(
      width: 315,
      height: 161,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informations",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: const Color(0xff191919),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub total",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
                Text(
                  "\$600.00",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
                Text(
                  "\$80.00",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
                Text(
                  "\$680.00",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff191919),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String resto;
  final double price;

  const CartList({
    Key? key,
    this.imageUrl = "",
    this.price = 0,
    this.resto = "",
    this.title = "",
  }) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Column(
              children: [
                Image.asset(
                  widget.imageUrl,
                  width: 80,
                ),
                const SizedBox(height: 13),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (quantity > 0) {
                            quantity--;
                          }
                        });
                        // print(quantity2);
                      },
                      child: Image.asset(
                        "assets/minus.png",
                        width: 22,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      quantity.toString(),
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xff191919),
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {
                        setState(() {
                          quantity++;
                        });
                        // print(quantity2);
                      },
                      child: Image.asset(
                        "assets/plus.png",
                        width: 22,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 26, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xff191919),
                  ),
                ),
                Text(
                  widget.resto,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: const Color(0xffA3A8B8),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 89, right: 16),
            child: Text(
              "\$${widget.price.toStringAsFixed(2)}",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color(0xff191919),
              ),
            ),
          )
        ],
      ),
    );
  }
}
