import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';
import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.07,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.23,
                    ),
                    const AnimatedImageContainer(
                      width: 150,
                      height: 200,
                    ),
                  ],
                ),

              // if (!Responsive.isTablet(context))
              SizedBox(
                height: size.height * 0.1,
              ),
              const Responsive(
                  desktop: MyPortfolioText(start: 40, end: 50),
                  largeMobile: MyPortfolioText(start: 40, end: 35),
                  mobile: MyPortfolioText(start: 35, end: 30),
                  tablet: MyPortfolioText(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              Row(
                children: [
                  const DownloadButton(),
                ],
              ),
            ],
          ),
        ),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.07,
        ),
      ],
    );
  }
}
