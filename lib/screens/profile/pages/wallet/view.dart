import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/castama/btn.dart';
import '../../../../core/design/catogary/walletimages.dart';


class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
          "المحفظة",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "رصيدك",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "255 ر.س",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 70.h,
                ),
                BTN(text: "اشحن الآن", onPrees: () {}),
                SizedBox(
                  height: 60.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "سجل المعاملات",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        "عرض الكل",
                        style: TextStyle(
                            fontSize: 15, color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            WalletPaid(),
            SizedBox(
              height: 20.h,
            ),
            WalletPaid(),
            SizedBox(
              height: 20.h,
            ),
            WalletAndPaid(),
          ],
        ),
      ),
    );
  }
}


