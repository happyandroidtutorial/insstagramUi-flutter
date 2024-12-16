import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/loginscreen.dart';
import 'package:instagram_ui/widgets/UiHelper.dart';

class Signupscreen extends StatefulWidget {
  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImg(imgUrl: 'Instagram_logo.png'),
              SizedBox(
                height: 25,
              ),
              UiHelper.CustomTextField(
                  controller: userNameController,
                  text: 'UserName',
                  toHide: false),
              SizedBox(
                height: 10,
              ),
              UiHelper.CustomTextField(
                  controller: emailController,
                  text: 'Email',
                  toHide: false,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              UiHelper.CustomTextField(
                  controller: passwordController,
                  text: 'Password',
                  toHide: true),
              SizedBox(
                height: 25,
              ),
              UiHelper.CustomButton(callback: () {}, buttonname: 'Sign Up'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  UiHelper.CustomTextButton(
                      callback: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()));
                      },
                      text: 'Sign In'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
