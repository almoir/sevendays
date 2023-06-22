// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import './pages/first_splash.dart';
import './pages/second_splash.dart';
import './pages/first_started.dart';
import './pages/second_started.dart';
import './pages/first_sign_in.dart';
import './pages/second_sign_in.dart';
import './pages/first_empty.dart';
import './pages/second_empty.dart';
import './pages/menu.dart';
import './pages/first_rating.dart';
import './pages/second_rating.dart';
import './pages/first_pricing.dart';
import './pages/second_pricing.dart';
import './pages/first_cart.dart';
import './pages/second_cart.dart';

void main() => runApp(const SevenDays());

class SevenDays extends StatelessWidget {
  const SevenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'menu': (context) => const Menu(),
        'first_splash': (context) => const FirstSplash(),
        'second_splash': (context) => const SecondSplash(),
        'first_started': (context) => const FirstStarted(),
        'second_started': (context) => const SecondStarted(),
        'first_sign_in': (context) => const FirstSignIn(),
        'second_sign_in': (context) => const SecondSignIn(),
        'first_empty': (context) => const FirstEmpty(),
        'second_empty': (context) => const SecondEmpty(),
        'first_rating': (context) => const FirstRating(),
        'second_rating': (context) => const SecondRating(),
        'first_pricing': (context) => const FirstPricing(),
        'second_pricing': (context) => const SecondPricing(),
        'first_cart': (context) => const FirstCart(),
        'second_cart': (context) => const SecondCart(),
      },
      home: const Menu(),
    );
  }
}
