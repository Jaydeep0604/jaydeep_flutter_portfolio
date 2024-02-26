import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/widget/intro/social_media_coloumn.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              const Spacer(),
              Text(
                'Follow Me',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(width: size.height*0.009,),
              Container(

                height: size.height * 0.04,

                width: 3,
                margin: EdgeInsets.symmetric(vertical: defaultPadding * 0.5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultPadding)),
              ),
              const SocialMediaIconColumn(),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
