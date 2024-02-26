import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/intro_body.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/side_menu_button.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/social_media_list.dart';
class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width * 0.01,
          // ),
          // if (!Responsive.isLargeMobile(context))  MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width * 0.02,
          // ),
          // if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width * 0.07,
          // ),
           Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}