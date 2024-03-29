import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:url_launcher/url_launcher.dart';


class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://drive.google.com/file/d/1x84qpKO-6zNC9nq3-46CJJCSjlaLy-UZ/view?usp=drive_link'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: defaultPadding/1.5,horizontal: defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow:const [
              BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 5),
              BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 5),
            ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.cyan,
                Colors.yellowAccent.shade700,
              ]),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.black,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: defaultPadding/3,),
            const Icon(FontAwesomeIcons.download,color: Colors.black87,size: 15,)

          ],
        ),
      ),
    );
  }
}