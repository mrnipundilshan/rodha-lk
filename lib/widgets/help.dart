import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text_field extends StatelessWidget {
  const text_field({
    super.key,
    required this.size,
    required this.controller,
    required this.hint,
  });

  final Size size;
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.07,
      child: TextField(
        controller: controller,
        maxLength: 30,
        style: GoogleFonts.poppins(
            color: Colors.white, fontSize: size.height * 0.02),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(123, 255, 255, 255),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none, // Removes border when not focused
          ),
          counterText: '',
          hintText: hint,
          hintStyle: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({
    super.key,
    required this.size,
    required this.text,
    required this.onPressed,
  });

  final Size size;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.07,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              height: 0.01,
              color: const Color.fromRGBO(255, 106, 0, 1),
              fontSize: size.width * 0.06,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class text_button extends StatelessWidget {
  const text_button({
    super.key,
    required this.size,
    required this.text1,
    required this.text2,
    required this.nextpage,
  });

  final Size size;
  final String text1;
  final String text2;
  final Widget nextpage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextpage));
        },
        child: Text.rich(
          TextSpan(
            text: text1,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.04,
            ),
            children: <TextSpan>[
              TextSpan(
                text: text2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
