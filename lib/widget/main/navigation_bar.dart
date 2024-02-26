import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/side_menu_button.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/connect_button.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child:!Responsive.isLargeMobile(context)? Image.asset('assets/images/triange_icon.png') : MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2,),
          if(!Responsive.isLargeMobile(context))  const NavigationButtonList(),
          const Spacer(flex: 2,),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}