import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/consts/colorpallet.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff8f9fa),
        padding: EdgeInsets.only(left: 24, right: 24, top: 38),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 38.h,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(Asseturl.splashlogo),
                Positioned(
                  left: 47,
                  bottom: 36,
                  child: Image.asset(
                    Asseturl.splashlogo1,
                    height: 16.h,
                    width: 16.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
            Text(
              "Welcome back! Login to      \nYour Account..",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: Typo.ManropeRegular,
                  fontSize: 30.sp),
            ),
            SizedBox(
              height: 25.h,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                    height: 28.h,
                    width: 28.w,
                    child: SvgPicture.asset(
                      Asseturl.icindflag,
                      fit: BoxFit.scaleDown,
                    )),
                hintText: "+91     Enter your mobile number..",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: Appcolor.greytextcolor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  borderSide: BorderSide(color: Appcolor.greytextcolor),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              width: 353.w,
              height: 55.h,
              child: FilledButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r))),
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  GoRouter.of(context).goNamed(Routes.otp.name);
                },
                child: Text(
                  "Send OTP",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade400,
                  ),
                ),
                Text(
                  "    Or Login with    ",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 12.sp),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Asseturl.icfb,
                      height: 24.h,
                    ),
                  ),
                ),
                Container(
                  height: 70.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Asseturl.icgoogle,
                      height: 24.h,
                    ),
                  ),
                ),
                Container(
                  height: 70.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Asseturl.icaaple,
                      height: 24.h,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
