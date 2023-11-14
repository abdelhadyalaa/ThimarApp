import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/catogary/walletimages.dart';

class AllProgressPaidScreen extends StatelessWidget {
  const AllProgressPaidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
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
        ),
        title: Text(
          "سجل المعاملات",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(height: 20.h,),
          WalletPaid(),
          SizedBox(height: 20.h,),
          WalletPaid(),
          SizedBox(height: 20.h,),
          WalletAndPaid(),
          SizedBox(height: 20.h,),
          WalletPaid(),
          SizedBox(height: 20.h,),
          WalletPaid(),
          SizedBox(height: 20.h,),
          WalletAndPaid(),
          SizedBox(height: 20.h,),
          WalletAndPaid(),
        ],
      ),
    );
  }
}
