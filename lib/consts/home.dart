import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/views/ai_planner_screen.dart';
import 'package:travel/views/explor_screen.dart';
import 'package:travel/views/home_screen.dart';
import 'package:travel/views/news&blogs_screen.dart';

int selectedbottamindex = 1;

class bottemicons {
  String? icon;
  String? text;

  bottemicons({this.icon, this.text});
}

List<bottemicons> bottemiconlist = [
  bottemicons(icon: Asseturl.ichome, text: "Home"),
  bottemicons(icon: Asseturl.icexplor, text: "Explor"),
  bottemicons(icon: Asseturl.icaiplanner, text: "AI Planner"),
  bottemicons(icon: Asseturl.icnewsandblogs, text: "News&Blogs"),
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List Screens = [
    HomeScreen(),
    ExplorScreen(),
    AiPlannerScreen(),
    NewsandblogsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedbottamindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                color: Colors.grey.shade500,
                blurRadius: 4)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r)),
        ),
        height: 75.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(Screens.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedbottamindex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    bottemiconlist[index].icon!,
                    height: 24.h,
                    width: 24.w,
                    color: selectedbottamindex == index
                        ? Colors.blue
                        : Color(0xff2F4858),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    bottemiconlist[index].text!,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
