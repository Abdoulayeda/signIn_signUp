import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpagetwo/constants.dart';
import 'package:loginpagetwo/screens/login/login_screen.dart';
import 'package:loginpagetwo/screens/signup/signup_screen.dart';
import 'package:loginpagetwo/screens/welcome/components/background.dart';
import 'package:loginpagetwo/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WELCOME TO EDU",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            color: kPrimaryColor,
            text: "LOGIN",
            textColor: Colors.white,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
          RoundedButton(
            color: kPrimaryLightColor,
            text: "SIGN UP",
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
