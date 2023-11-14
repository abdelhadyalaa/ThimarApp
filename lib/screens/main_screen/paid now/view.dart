import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/design/castama/btn.dart';

import '../../../core/design/castama/iconback.dart';

class PayNowScreen extends StatelessWidget {
  const PayNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconBackScreen(),
        title: Text(
          "شحن الان",
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SizedBox(
            height: 60.h,
          ),
          Text(
            "معلومات المبلغ",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)),
                labelText: "المبلغ الخاص بك"),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "معلومات البطاقة",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)),
                labelText: "الاسم"),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            style: TextStyle(color: Theme.of(context).primaryColor),
            decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)),
                labelText: "رقم البطاقة الائتمانية"),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 160.w,
                height: 60.h,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                      labelText: "تاريخ الانتهاء"),
                ),
              ),
              SizedBox(
                width: 160.w,
                height: 60.h,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Theme.of(context).primaryColor.withOpacity(.1),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                      labelText: "الرقم المتسلسل"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 160.h,
          ),
          BTN(text: "دفع", onPrees: () {}),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
