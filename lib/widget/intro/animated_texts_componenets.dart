import 'package:flutter/material.dart';
import 'package:jaydeep_flutter_portfolio/utils/app_color.dart';
import 'package:jaydeep_flutter_portfolio/utils/responsive.dart';


class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}
class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Color customImageColor = Colors.black .withOpacity(0.2);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Colors.black.withOpacity(0.2);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }
  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: MouseRegion(
            onEnter: _incrementEnter,
            onHover: _updateLocation,
            onExit: _incrementExit,
            child: Stack(
              children: [
                Container(
                  height: widget.height!,
                  width: widget.width!,
                  padding: EdgeInsets.all(defaultPadding / 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:  LinearGradient(colors: [
                      Colors.yellowAccent,
                      Colors.blue,
                    ]),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.yellowAccent,
                        offset: Offset(-2, 0),
                        blurRadius: 20,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: Offset(2, 0),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ClipRRect( // ClipRRect to ensure the image conforms to the rounded border
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/jaydeep.jpg',
                      height: Responsive.isLargeMobile(context)
                          ? MediaQuery.of(context).size.width * 0.2
                          : Responsive.isTablet(context)
                          ? MediaQuery.of(context).size.width * 0.14
                          : 200,
                      width: Responsive.isLargeMobile(context)
                          ? MediaQuery.of(context).size.width * 0.2
                          : Responsive.isTablet(context)
                          ? MediaQuery.of(context).size.width * 0.14
                          : 200,
                      fit: BoxFit.cover, // Use BoxFit.cover to fill the container while maintaining aspect ratio
                    ),
                  ),
                ),
                Container(
                  height: widget.height!,
                  width: widget.width!,
                  padding: EdgeInsets.all(defaultPadding / 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: customImageColor,
                  ),

                ),
              ],
            ),
          ),
        );
      },
    );
  }
}