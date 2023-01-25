import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_assistant/home_page.dart';
import 'package:health_assistant/itemized_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: BottomNavBar(),
        );
      },
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      resizeToAvoidBottomInset: false,
      color: Colors.black,
      selectedIconColor: Colors.white,
      unselectedIconColor: Colors.white.withOpacity(0.6),
      showTitle: false,
      items: [
        FloatingNavBarItem(
          iconData: Icons.home_outlined,
          page: HomePage(),
          title: 'Home',
        ),
        FloatingNavBarItem(
            iconData: CupertinoIcons.chart_pie,
            page: ItemizedDetails(),
            title: 'Doctors'),
        FloatingNavBarItem(
            iconData: CupertinoIcons.bell,
            page: HomePage(),
            title: 'Reminders'),
        FloatingNavBarItem(
            iconData: CupertinoIcons.person,
            page: HomePage(),
            title: 'Records'),
      ],
      horizontalPadding: 10.0,
      hapticFeedback: true,
    );
  }
}
