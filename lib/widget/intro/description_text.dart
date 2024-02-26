import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          '• Highly skilled and motivated software engineer with more than 1 years of experience encoding efficient, reusable Flutter developer\n'
          '• 1 years of experience in Flutter App development\n'
          '• Confident working with Flutter, Dart, Firebase, SQLite any types of API\n'
          '• A determined individual and always open to new technologies\n'
          '• Technical expertise of Flutter, Application development with Building process models, Firebase, SQFLite, Dart',
          overflow: TextOverflow.fade,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
// '• Highly skilled and motivated software engineer with${Responsive.isLargeMobile(context) ? '\n' : ''} more than 1 years of experience encoding${Responsive.isTablet(context) ? '\n' : ''} efficient,${Responsive.isLargeMobile(context) ? '\n' : ''} reusable Flutter developer\n'
// '• 1 years of experience in Flutter App development\n'
// '• Confident working with Flutter, Dart, Firebase,${Responsive.isLargeMobile(context) ? '\n' : ''} SQLite any types of API\n'
// '• A determined individual and always open to new${Responsive.isLargeMobile(context) ? '\n' : ''} technologies\n'
// '• Technical expertise of Flutter, Application development${Responsive.isLargeMobile(context) ? '\n' : ''} with Building process models, Firebase,${Responsive.isTablet(context) ? '\n' : ''} SQFLite,${Responsive.isLargeMobile(context) ? '\n' : ''} Dart',