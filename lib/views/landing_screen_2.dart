import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class LandingScreen2 extends StatefulWidget {
  LandingScreen2({super.key});

  @override
  State<LandingScreen2> createState() => _LandingScreen2State();
}

class _LandingScreen2State extends State<LandingScreen2> {
  List languages = [
    "English",
    "Hindi",
    "Arabic",
    "Telugu",
    "Malayalam",
    "Chinese",
    "Japanese"
  ];

  int selectedindex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 27.h, left: 25, right: 87),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Choose Language",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: Typo.ManropeSemibold,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 30,
              children: List.generate(
                languages.length,
                (index) => GestureDetector(
                  onTap: () {
                    selectedindex = index;
                    setState(() {
                      Future.delayed(Duration(seconds: 1), () {
                        GoRouter.of(context).goNamed(Routes.login.name);
                      });
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 3, bottom: 3, right: 10, left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: index == selectedindex
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      languages[index],
                      style: TextStyle(
                          color: index == selectedindex
                              ? Colors.blue
                              : Colors.grey,
                          fontFamily: Typo.ManropeMedium),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
