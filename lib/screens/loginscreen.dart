import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Home/bottomnav.dart';
import 'package:instagram_ui/screens/signupscreen.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Loginscreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImg(imgUrl: 'instagram_logo.png'),
              SizedBox(
                height: 10,
              ),
              UiHelper.CustomTextField(
                  controller: emailController,
                  text: 'Email',
                  toHide: false,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 12,
              ),
              UiHelper.CustomTextField(
                controller: passwordController,
                text: 'Password',
                toHide: true,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  UiHelper.CustomTextButton(
                      callback: () {}, text: 'Forgot password?'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              UiHelper.CustomButton(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Bottomnavscreen()),
                    );
                  },
                  buttonname: 'Log In'),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomImg(imgUrl: 'fb_icon.png'),
                  UiHelper.CustomTextButton(
                      callback: () {}, text: 'Log in with Facebook')
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '--- OR ---',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  UiHelper.CustomTextButton(
                      callback: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signupscreen()));
                      },
                      text: 'Sign Up')
                  // Text(
                  //   ' Sign Up',
                  //   style: TextStyle(color: Colors.blue, fontSize: 14),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
