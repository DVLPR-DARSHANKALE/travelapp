import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:velocity_x/velocity_x.dart';

class Category {
  String? icon;
  String? title;

  Category({this.icon, this.title});
}

List<Category> Categorylist1 = [
  Category(icon: Asseturl.icflight, title: "Flight"),
  Category(icon: Asseturl.ichotel, title: "Hotels"),
  Category(icon: Asseturl.icpakges, title: "Packages"),
];
List<Category> Categorylist2 = [
  Category(icon: Asseturl.icrentalcar, title: "Rental Cars & Bikes"),
  Category(icon: Asseturl.ictrain, title: "Trains & Bus"),
  Category(icon: Asseturl.icdiscount, title: "Special Discounts"),
];
List<Category> Categorylist3 = [
  Category(icon: Asseturl.igparis, title: "Paris"),
  Category(icon: Asseturl.igbali, title: "Bali"),
  Category(icon: Asseturl.igjapan, title: "Japan"),
  Category(icon: Asseturl.igiceland, title: "Iceland"),
];
List<Category> Categorylist5 = [
  Category(icon: Asseturl.igbeach, title: "Beach"),
  Category(icon: Asseturl.igmountain, title: "Mountains"),
];
List<Category> Categorylist6 = [
  Category(icon: Asseturl.igjapan2, title: "Japan"),
  Category(icon: Asseturl.igmaldivies, title: "Maldives"),
];

List<Category> Categorylist4 = [
  Category(
    icon: Asseturl.igbannar1,
  ),
  Category(
    icon: Asseturl.igbannar2,
  ),
  Category(
    icon: Asseturl.igbannar3,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff9f9f9),
        padding: EdgeInsets.only(right: 24, top: 35, left: 24),
        child: SingleChildScrollView(
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
              SizedBox(
                height: 22.h,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SizedBox(
                              height: 41.h,
                              width: 41.w,
                              child:
                                  SvgPicture.asset(Categorylist1[index].icon!)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(Categorylist1[index].title!)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Container(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    Categorylist2.length,
                    (index) => Column(
                      children: [
                        CircleAvatar(
                          radius: 28.r,
                          backgroundColor: Color(0xffF2F3F5),
                          child: SvgPicture.asset(
                            Categorylist2[index].icon!,
                            fit: BoxFit.cover,
                            height: 32.h,
                            width: 26.w,
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          Categorylist2[index].title!,
                          style: TextStyle(
                              fontFamily: Typo.ManropeRegular, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 42.h,
                    width: 160.w,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Asseturl.icthingstodo,
                            height: 14.h,
                            width: 14.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Things to do",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: Typo.ManropeMedium,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                    width: 160.w,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Asseturl.icrestaurant,
                            height: 14.h,
                            width: 14.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Restaurants",
                            style: TextStyle(
                                color: Colors.blue,
                                fontFamily: Typo.ManropeMedium,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 39.h,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                width: 354.w,
                height: 160.h,
                decoration: BoxDecoration(
                    color: Color(
                      0xff686F81,
                    ),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Row(
                  children: [
                    Image.asset(
                      Asseturl.GIFtravel,
                      scale: 2,
                    ),
                    SizedBox(
                      width: 95.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "AI Trip Planner",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: Typo.ManropeSemibold,
                                  fontSize: 11.sp),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  height: 15.h,
                                  Asseturl.icaiplanner,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 8.h,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 68.h,
                        ),
                        Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Start Planning",
                              style: TextStyle(
                                  color: Color(0xff686F81),
                                  fontFamily: Typo.ManropeBold,
                                  fontSize: 10.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Destinations",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: Typo.ManropeBold,
                        fontSize: 16.sp),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: Typo.ManropeRegular,
                        fontSize: 14.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 165.w / 130.h,
                    crossAxisCount: 2),
                children: List.generate(
                  Categorylist3.length,
                  (index) => Container(
                    padding: EdgeInsets.only(right: 4.w, bottom: 4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      image: DecorationImage(
                          image: AssetImage(
                            Categorylist3[index].icon!,
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        Categorylist3[index].title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Typo.ManropeSemibold,
                            fontSize: 11.sp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 180.h,
                width: 360.w,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    Categorylist4.length,
                    (index) => Container(
                      clipBehavior: Clip.antiAlias,
                      height: 180.h,
                      width: 360.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            Categorylist4[index].icon!,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Journey together",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: Typo.ManropeBold,
                        fontSize: 16.sp),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: Typo.ManropeRegular,
                        fontSize: 14.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 360.h,
                width: 345.w,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Asseturl.igmountbromo),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Mount Bromo",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.ManropeSemibold,
                                fontSize: 14.sp),
                          ),
                          Text(
                            "Volcano in East Java",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontFamily: Typo.ManropeRegular,
                                fontSize: 9.sp),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              VxRating(
                                selectionColor: Color(0xffFFD233),
                                onRatingUpdate: (value) {},
                                count: 1,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 146.w,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Start from",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 10.sp),
                                      ),
                                      Text(
                                        "Rs.56,150/per",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                    child: Container(
                                      width: 52.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "3D2N",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: Typo.ManropeBold,
                        fontSize: 16.sp),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: Typo.ManropeRegular,
                        fontSize: 14.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 300.h,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    Categorylist5.length,
                    (index) => Container(
                      margin: EdgeInsets.only(left: 23.w),
                      clipBehavior: Clip.antiAlias,
                      height: 300.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            Categorylist5[index].icon!,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: Colors.black.withOpacity(0.1)),
                            height: 300.h,
                            width: 165.w,
                          ),
                          Positioned(
                              bottom: 6,
                              left: 6,
                              child: Text(
                                Categorylist5[index].title!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: Typo.ManropeBold),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Visited Places",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: Typo.ManropeBold,
                        fontSize: 16.sp),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: Typo.ManropeRegular,
                        fontSize: 14.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 300.h,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    Categorylist6.length,
                    (index) => Container(
                      margin: EdgeInsets.only(left: 25),
                      clipBehavior: Clip.antiAlias,
                      height: 300.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            Categorylist6[index].icon!,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: Colors.black.withOpacity(0.1)),
                            height: 300.h,
                            width: 165.w,
                          ),
                          Positioned(
                            bottom: 6,
                            right: 6,
                            child: Text(
                              Categorylist6[index].title!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: Typo.ManropeBold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
