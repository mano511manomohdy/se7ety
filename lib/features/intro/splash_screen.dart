import 'package:flutter/material.dart';
// Image.asset is used to show the newly extracted PNG
import 'package:se7ety/core/constants/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(AssetsIcons.logo)));
  }
}
