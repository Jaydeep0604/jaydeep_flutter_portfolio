import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/ui/home/home_screen.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/widget/animated_loading_text.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/animated_texts_componenets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: defaultPadding,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
