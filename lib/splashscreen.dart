import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay before navigating to the next screen
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
          context, '/home'); // Replace with your home route
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 106, 0, 1),
        ),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "RODHA.LK",
              style: GoogleFonts.poppins(
                  fontSize: size.width * 0.13, fontWeight: FontWeight.bold),
            ),
            Text(
              "Move More, Do More",
              style: GoogleFonts.poppins(
                  height: 0.01,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
