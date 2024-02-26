import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaydeep_flutter_portfolio/ui/certification/certifications.dart';
import 'package:jaydeep_flutter_portfolio/ui/projects/project_view.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'package:jaydeep_flutter_portfolio/view_model/getx_controllers/certification_controller.dart';
import 'package:jaydeep_flutter_portfolio/view_model/getx_controllers/projects_controller.dart';
import 'package:jaydeep_flutter_portfolio/widget/certification/certification_grid.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/social_media_list.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/drawer.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/navigation_bar.dart';
import 'package:jaydeep_flutter_portfolio/widget/main/drawer/navigation_button_list.dart';
import 'package:jaydeep_flutter_portfolio/widget/projects/projects_grid.dart';
import 'package:jaydeep_flutter_portfolio/widget/projects/title_text.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../widget/intro/intro_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProjectController());
    final cController = Get.put(CertificationController());

    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            if (kIsWeb && !Responsive.isLargeMobile(context))
              SizedBox(height: defaultPadding * 2)
            else
              SizedBox(height: defaultPadding / 2),
            SizedBox(
              height: 80,
              child: SocialMediaIconList(),
            ),
            // if (Responsive.isLargeMobile(context))
              Row(
                children: [
                  Spacer(),
                  NavigationButtonList(),
                  Spacer(),
                ],
              ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.01,
                    ),
                    // if (!Responsive.isLargeMobile(context))  MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.02,
                    ),
                    // if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.07,
                    ),
                    _wrapScrollTag(
                      index: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntroBody(),
                      ),
                    ),
                    SizedBox(height: 20),
                    _wrapScrollTag(
                      index: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TitleText(prefix: 'Latest', title: 'Projects'),
                      ),
                    ),
                    SizedBox(height: 20),

                    Responsive(
                      desktop: ProjectGrid(crossAxisCount: 3),
                      extraLargeScreen: ProjectGrid(crossAxisCount: 4),
                      largeMobile: ProjectGrid(crossAxisCount: 1, ratio: 1.8),
                      mobile: ProjectGrid(crossAxisCount: 1, ratio: 1.5),
                      tablet: ProjectGrid(crossAxisCount: 2, ratio: 1.4),
                    ),
                    SizedBox(height: 20),
                    _wrapScrollTag(
                      index: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TitleText(
                            prefix: 'Certifications & ', title: 'License'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Responsive(
                      desktop: CertificateGrid(crossAxisCount: 3, ratio: 1.5),
                      extraLargeScreen:
                          CertificateGrid(crossAxisCount: 4, ratio: 1.6),
                      largeMobile:
                          CertificateGrid(crossAxisCount: 1, ratio: 1.8),
                      mobile: CertificateGrid(crossAxisCount: 1, ratio: 1.4),
                      tablet: CertificateGrid(crossAxisCount: 2, ratio: 1.7),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
