// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                'lib/images/logo.png',
                height: 400,
              ),
            ),
            //title
            Container(
              child: Text(
                'CUSTOMIZE YOUR DREAM',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(216, 255, 153, 0),
                    fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //subtitle
            Container(
              child: Text(
                'Brand new jerseys, customizable, and served hot at your doorstep!',
                style: TextStyle(
                    color: const Color.fromARGB(198, 243, 239, 186),
                    fontSize: 13),
              ),
            ),
            SizedBox(height: 100),

            //start now button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: Text(
                "Shop Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
