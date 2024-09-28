import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class register extends StatelessWidget {
  const register({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "RODHA.LK",
                  style: GoogleFonts.poppins(
                      height: 0.8,
                      fontSize: size.width * 0.13,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Move More, Do More",
                  style: GoogleFonts.poppins(
                      fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
