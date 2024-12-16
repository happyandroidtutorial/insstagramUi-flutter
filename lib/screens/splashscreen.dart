import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/loginscreen.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImg(imgUrl: 'image_logo.png'),
            SizedBox(
              height: 8,
            ),
            UiHelper.CustomImg(imgUrl: 'instagram_logo.png'),
          ],
        ),
      ),
    );
  }
}
