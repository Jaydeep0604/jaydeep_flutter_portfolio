import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/jaydeep-koladiya/'))),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/Jaydeep0604')),),
        // const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
        // const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
        // const SocialMediaIcon(icon: 'assets/icons/linkedin.svg'),
      ],
    );
  }
}