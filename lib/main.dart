import 'package:flutter/material.dart';
import 'package:rodhalk/homepage.dart';
import 'package:rodhalk/login.dart';
import 'package:rodhalk/register.dart';
import 'package:rodhalk/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
          selectionColor: Color.fromARGB(54, 43, 35, 35),
          selectionHandleColor: Colors.white,
        ),
      ),
      title: "rodhalk",
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the splash screen as the initial route
      routes: {
        '/': (context) => splashscreen(),
        '/home': (context) => homepage(), // Replace with your main screen
        'login': (context) => login(),
        '/register': (context) => register(),
      },
    );
  }
}
