import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});

  PageController pageController = PageController();

  int _currentpage = 0;
  nextPage(context) {
    if (_currentpage < 2) {
      pageController.nextPage(
          duration: Duration(microseconds: 600), curve: Curves.ease);
    } else
      GoRouter.of(context).goNamed(Routes.landing2.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (index) {
                    _currentpage = index;
                  },
                  controller: pageController,
                  children: [
                    pagecode(
                        img: Asseturl.igboardingimg1,
                        text: "Find Cheaper Flights Instantly",
                        text1:
                            "Compare prices from all flight booking services in one place. Book the best deal effortlessly!"),
                    pagecode(
                        img: Asseturl.igboardingimg2,
                        text: "Let AI Plan Your Dream Trip",
                        text1:
                            "Let our smart AI create personalized itineraries based on your preferences. From destinations to activities, plan your ideal trip in minutes without the hassle."),
                    pagecode(
                        img: Asseturl.igboardingimg3,
                        text: "Discover Exciting Holiday Packages",
                        text1:
                            "Book personalized holiday packages tailored to your travel style."),
                  ],
                ),
                Positioned(
                  bottom: 60,
                  left: 25,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Colors.blue,
                        dotHeight: 5.h),
                  ),
                ),
                Positioned(
                    bottom: 50,
                    right: 24,
                    child: IconButton.filled(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {
                          nextPage(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }

  Container pagecode({
    img,
    text,
    text1,
  }) {
    return Container(
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        // GoRouter.of(context).goNamed(Routes.landing2.name);
                      },
                      child: Text(
                        "skip>",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Typo.ManropeRegular,
                            fontSize: 14.sp),
                      ),
                    )),
                SizedBox(
                  height: 420.h,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: Typo.ManropeBold,
                      fontSize: 28.sp),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Text(
                  text1,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 16.sp),
                ),
              ],
            ),
          )),
    );
  }
}
