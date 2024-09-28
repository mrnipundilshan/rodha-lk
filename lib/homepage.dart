import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rodhalk/widgets/help.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Column(
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
            ).animate().fade().slideX(
                  curve: Curves.fastOutSlowIn,
                  duration: 500.ms,
                  begin: -1.0,
                ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image(
                    image: const AssetImage("assets/bike.png"),
                    width: size.width * 1)
                .animate()
                .fade()
                .slideX(
                  curve: Curves.fastOutSlowIn,
                  duration: 500.ms,
                  begin: 1.0,
                ),
            SizedBox(
              height: size.height * 0.1,
            ),
            button(
                size: size, text: "Get Started", onPressed: _handleButtonPress)
          ],
        ),
      ),
    );
  }
}

void _handleButtonPress() {}
