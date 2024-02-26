import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/contact_icons.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/knowledges.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/my_skill.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/personal_info.dart';
import 'about.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child:  Padding(
              padding: EdgeInsets.all(defaultPadding/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfo(),
                  MySKills(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding,),
                  ContactIcon(),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



