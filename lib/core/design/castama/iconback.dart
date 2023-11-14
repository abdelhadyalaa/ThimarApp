import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBackScreen extends StatelessWidget {
  const IconBackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 40,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Color(0xff4C8613).withOpacity(.13),
          borderRadius: BorderRadius.circular(16)),
      child: SvgPicture.asset(
        "assets/images/arrow.svg",
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
