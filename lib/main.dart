import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/screens/auth/login_in/view.dart';
import 'package:thimar/screens/home/pages/home/view.dart';
import 'package:thimar/screens/home/pages/notifications/view.dart';
import 'package:thimar/screens/main_screen/all_progress_paid/view.dart';
import 'package:thimar/screens/main_screen/cart/view.dart';
import 'package:thimar/screens/main_screen/paid%20now/view.dart';
import 'package:thimar/screens/profile/pages/faqs/view.dart';
import 'package:thimar/screens/splash/view.dart';

import 'core/design/castama/navigation.dart';
import 'core/design/res/colors.dart';
import 'screens/home/pages/my_orders/view.dart';
import 'screens/profile/pages/paying_off/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, x) {
          return MaterialApp(
            navigatorKey: navigetorKey,
            builder: (context, child) =>
                Directionality(textDirection: TextDirection.rtl, child: child!),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                fontFamily: "Tajawal",
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(
                    color: Colors.white,
                    elevation: 0,
                    titleTextStyle: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
                primarySwatch: getMaterialColor(primaryColor.value),
                hintColor: Color(0xff808080)),
            home: PageView(
              children: [

                FAQsPage(),
                // HomePage(),
                // MyOrdersPage(),
                // PayNowScreen(),
                // CartScreen(),
                // MyAccountPage(),
                // AllProgressPaidScreen(),
                // WalletPage(),

                // MyAccountPage(),
                // NotificationsPage(),
                // SplashScreen(),
                // CartScreen(),
                // TagrobaScreen(),
              ],
            ),
          );
        });
  }
}
