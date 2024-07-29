import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jaydeep_flutter_portfolio/ui/splash/splash_screen.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white,)
            .copyWith(
          bodyText1: const TextStyle(color: bodyTextColor),
          bodyText2: const TextStyle(color: bodyTextColor),
        ),
      ),

      home: SplashView()
    );
  }
}