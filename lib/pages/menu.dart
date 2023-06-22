import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "first_splash"),
                    child: const Text("First Splash"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "first_started"),
                    child: const Text("First Started"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "first_sign_in"),
                    child: const Text("First Sign In"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "first_empty"),
                    child: const Text("First Empty"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "first_rating"),
                    child: const Text("First Rating"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "first_pricing"),
                    child: const Text("First Pricing"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () => Navigator.pushNamed(context, "first_cart"),
                    child: const Text("First Cart"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_splash"),
                    child: const Text("Second Splash"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_started"),
                    child: const Text("Second Started"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_sign_in"),
                    child: const Text("Second Sign In"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_empty"),
                    child: const Text("Second Empty"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_rating"),
                    child: const Text("Second Rating"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_pricing"),
                    child: const Text("Second Pricing"),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                      minimumSize: const Size(135, 50),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, "second_cart"),
                    child: const Text("Second Cart"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
