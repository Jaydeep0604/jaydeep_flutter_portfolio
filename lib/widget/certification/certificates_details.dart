import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaydeep_flutter_portfolio/model/certificate_model.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/view_model/getx_controllers/certification_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificateStack extends StatelessWidget {
  final CertificationController controller = Get.put(CertificationController());
  final int index;

  CertificateStack({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(defaultPadding),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        duration: const Duration(milliseconds: 500),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              certificateList[index].name,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  certificateList[index].organization,
                  style: const TextStyle(color: Colors.amber),
                ),
                Text(
                  certificateList[index].date,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            certificateList[index].skills.isNotEmpty
                ? Text(
              'Skills : ${certificateList[index].skills}',
              style: const TextStyle(
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
                : SizedBox(),
            SizedBox(height: defaultPadding),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse(certificateList[index].credential));
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [Colors.cyan, Colors.yellowAccent],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, -1),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 1),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Credentials',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      CupertinoIcons.arrow_turn_up_right,
                      color: Colors.black,
                      size: 10,
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
