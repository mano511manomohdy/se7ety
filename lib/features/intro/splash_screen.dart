import 'package:flutter/material.dart';
import 'package:se7ety/core/constants/assets.dart';
import 'package:se7ety/core/extenstions/navigator.dart';
import 'package:se7ety/features/on_boarding/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () async {
      await context.pushReplacement(OnBoarding());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(AssetsIcons.logo)));
  }
}
