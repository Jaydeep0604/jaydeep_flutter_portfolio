import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'package:jaydeep_flutter_portfolio/view_model/getx_controllers/projects_controller.dart';
import 'package:jaydeep_flutter_portfolio/widget/projects/projects_grid.dart';
import 'package:jaydeep_flutter_portfolio/widget/projects/title_text.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Latest', title: 'Projects'),
          const SizedBox(
            height: defaultPadding,
          ),
          Flexible(
            child: Responsive(
              desktop: ProjectGrid(
                crossAxisCount: 3,
              ),
              extraLargeScreen: ProjectGrid(
                crossAxisCount: 4,
              ),
              largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.8),
              mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
              tablet: ProjectGrid(
                ratio: 1.4,
                crossAxisCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
