import 'package:flutter/material.dart';
import 'package:rodhalk/homepage.dart';
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
      ),
      title: "rodhalk",
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the splash screen as the initial route
      routes: {
        '/': (context) => splashscreen(),
        '/home': (context) => homepage(), // Replace with your main screen
      },
    );
  }
}
