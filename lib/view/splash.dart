import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freshrr/main.dart';
import 'package:flutter_config/flutter_config.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final String duration = FlutterConfig.get('SPLASH_DURATION');
  final String logo = FlutterConfig.get('APP_LOGO');
  @override
  void initState() {
    Timer(Duration(seconds: int.parse(duration)), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Image.network(
          '$logo',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
