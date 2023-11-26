import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thimar/core/design/castama/iconback.dart';

class FAQsPage extends StatelessWidget {
  const FAQsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconBackScreen(),
        title: Text(
          "أسئلة متكررة",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Row(
            children: [
              Text("mxcllfcm"),
              Spacer(),
              Container(
                height: 22.h,
                width: 40.w,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: Color(0xff4C8613).withOpacity(.13),
                    borderRadius: BorderRadius.circular(16)),
                child: SvgPicture.asset(
                  "assets/images/arrow.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
