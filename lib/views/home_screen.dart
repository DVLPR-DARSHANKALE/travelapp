import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';

class Category {
  String? icon;
  String? title;

  Category({this.icon, this.title});
}

List<Category> Categorylist1 = [
  Category(icon: Asseturl.icflight, title: "Flight"),
  Category(icon: Asseturl.ichotel, title: "Hotels"),
  Category(icon: Asseturl.icpakges, title: "packages"),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff9f9f9),
        padding: EdgeInsets.only(right: 24, top: 35, left: 24),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 14.sp),
                ),
                Text(
                  " Satya!",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 18.sp),
                ),
                SizedBox(
                  width: 145.w,
                ),
                SvgPicture.asset(Asseturl.icindflag),
                Text(
                  "  INR",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontFamily: Typo.ManropeSemibold,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  width: 30.w,
                ),
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 28,
                  ),
                  backgroundColor: Color(
                    0xffF2F3F5,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: "Search here...",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  suffixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.grey.shade500,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.white),
            ),
            Row(
              children: List.generate(
                Categorylist1.length,
                (index) => Container(
                  padding: EdgeInsets.only(top: 5),
                  margin: EdgeInsets.all(10),
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F3F5),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(Categorylist1[index].icon!),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(Categorylist1[index].title!)
                    ],
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
