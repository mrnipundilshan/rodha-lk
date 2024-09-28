import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rodhalk/register.dart';
import 'package:rodhalk/widgets/help.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
            SizedBox(height: size.height * 0.02),
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
                SizedBox(
                  height: size.height * 0.08,
                ),
              ],
            ),
            Column(
              children: [
                text_field(
                    size: size,
                    controller: emailController,
                    hint: "Enter Username"),
                SizedBox(
                  height: size.height * 0.02,
                ),
                text_field(
                    size: size,
                    controller: passwordController,
                    hint: "Enter Password"),
                SizedBox(
                  height: size.height * 0.06,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: size.height * 0.01),
                button(size: size, text: "Login", onPressed: _login),
                SizedBox(height: size.height * 0.01),
                text_button(
                  size: size,
                  text1: "Don't have an account? ",
                  text2: 'Register',
                  nextpage: const register(),
                )
              ],
            ),
            SizedBox(height: size.height * 0.02),
          ],
        )),
      ),
    );
  }
}

void _login() {}
