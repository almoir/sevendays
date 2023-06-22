import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplash extends StatefulWidget {
  const SecondSplash({super.key});

  @override
  State<SecondSplash> createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
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
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/background.png",
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/house.png",
                width: 51,
                height: 51,
              ),
              const SizedBox(width: 14),
              Text(
                "HouseQu",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                )),
              )
            ],
          ),
        )
      ]),
    );
  }
}
