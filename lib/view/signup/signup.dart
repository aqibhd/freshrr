import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshrr/view/signup/signup_p1.dart';
import 'package:freshrr/view/signup/signup_p2.dart';
import 'package:freshrr/view/signup/signup_p3.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  final List<Widget> screens = const [SignUpP1(), SignUpP2(), SignUpP3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("Create Account"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: const Color(0xff1363DF),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Color(0xff1363DF),
              statusBarIconBrightness: Brightness.light)),
      body: PageView.builder(
        itemBuilder: (context, index) => screens[index],
        itemCount: screens.length,
      ),
    );
  }
}
