import 'dart:async';

import 'package:demopage/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, devHeight / 3 * 2 / 2, 0, devHeight / 3 * 2 / 2),
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 71, 5, 138),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NSBM',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 63, 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 105, 15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 99, 181, 101),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 118, 177, 120),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 192, 231, 194),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
