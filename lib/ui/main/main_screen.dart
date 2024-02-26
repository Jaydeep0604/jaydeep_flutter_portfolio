import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'package:jaydeep_flutter_portfolio/view_model/controller.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/drawer.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/navigation_bar.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
class MainView extends StatelessWidget {
   const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context) ? const SizedBox(height:defaultPadding*2,) : const SizedBox(height:defaultPadding/2,),
             const SizedBox(
                height: 80,
                child: TopNavigationBar(),
            ),
            if(Responsive.isLargeMobile(context))  Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
            Expanded(
                flex: 9,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                    ...pages
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}







