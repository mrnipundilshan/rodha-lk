import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rodhalk/homepage.dart';

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
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Preload images here, where MediaQuery is available
    precacheImage(AssetImage("assets/bg.png"), context);
    precacheImage(AssetImage("assets/bike.png"), context);
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          homepage(), // Replace with your HomePage widget
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var opacityAnimation = animation.drive(tween);

        return FadeTransition(
          opacity: opacityAnimation,
          child: child,
        );
      },
    );
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
          mainAxisAlignment: MainAxisAlignment.center,
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
