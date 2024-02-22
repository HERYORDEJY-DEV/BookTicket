import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Row(
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Good Morning"),
                    Text("Book Ticket"),
                  ],
                ),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ],
        )
      ],
    ));
  }
}
