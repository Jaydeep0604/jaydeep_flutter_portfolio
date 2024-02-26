import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/subtitle_text.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Flutter '),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Flutter '),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Flutter '),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Flutter '),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ?  Responsive(
          desktop: AnimatedSubtitleText(
              start: 30,
              end: 40,
              text: 'Developer ',
              gradient: true),
          largeMobile: AnimatedSubtitleText(
              start: 30,
              end: 25,
              text: 'Developer ',
              gradient: true),
          mobile: AnimatedSubtitleText(
              start: 25,
              end: 20,
              text: 'Developer ',
              gradient: true),
          tablet: AnimatedSubtitleText(
              start: 40,
              end: 30,
              text: 'Developer ',
              gradient: true),
        )
            : ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.cyan,
              Colors.yellowAccent,
            ]).createShader(bounds);
          },
          child:  Responsive(
            desktop: AnimatedSubtitleText(
                start: 30,
                end: 40,
                text: 'Developer ',
                gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30,
                end: 25,
                text: 'Developer ',
                gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25,
                end: 20,
                text: 'Developer ',
                gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40,
                end: 30,
                text: 'Developer ',
                gradient: false),
          ),
        ))
      ],
    );
  }
}