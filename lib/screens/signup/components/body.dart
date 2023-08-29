import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpagetwo/constants.dart';
import 'package:loginpagetwo/screens/login/components/body.dart';
import 'package:loginpagetwo/screens/login/login_screen.dart';
import 'package:loginpagetwo/screens/signup/components/background.dart';
import 'package:loginpagetwo/screens/signup/components/social_icon.dart';
import 'package:loginpagetwo/widgets/already_have_an_account_check.dart';
import 'package:loginpagetwo/widgets/rounded_password_field.dart';

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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            const SizedBox(height: 10),
            AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                }),
            const SizedBox(height: 10),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: const Row(
        children: [
          Expanded(
            child: Divider(
              color: Color(0xFFD9D9D9),
              height: 1.5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Divider(
              color: kPrimaryLightColor,
              height: 2.5,
            ),
          ),
        ],
      ),
    );
  }
}
