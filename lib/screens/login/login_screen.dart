import 'package:flutter/material.dart';
//import 'package:loginpagetwo/constants.dart';
import 'package:loginpagetwo/screens/login/components/body.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /*  appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Flutter auth"),
      ), */
      body: Body(),
    );
  }
}
