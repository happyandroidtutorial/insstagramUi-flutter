import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Home/bottomnav.dart';
import 'package:instagram_ui/screens/loginscreen.dart';
import 'package:instagram_ui/screens/signupscreen.dart';
import 'package:instagram_ui/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        theme: ThemeData.dark(),
        home: Bottomnavscreen(),
        );
  }
}
