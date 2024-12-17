import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';
import 'package:travel/views/landing_screen.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 24, top: 32, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                  height: 45.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey.shade600,
                  )),
            ),
            SizedBox(
              height: 18.sp,
            ),
            Text(
              "OTP Verification",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: Typo.ManropeMedium,
                  fontSize: 28.sp),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              "Enter the verification code we just sent on your email address.",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontFamily: Typo.ManropeRegular,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 22.h,
            ),
            Pinput(
              autofocus: true,
              length: 4,
              defaultPinTheme: PinTheme(
                margin: EdgeInsets.only(left: 25),
                textStyle:
                    TextStyle(fontSize: 22.sp, fontFamily: Typo.ManropeBold),
                height: 70.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey.shade300),
                ),
              ),
              focusedPinTheme: PinTheme(
                height: 70.h,
                width: 60.w,
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
              ),
              submittedPinTheme: PinTheme(
                margin: EdgeInsets.only(left: 25),
                height: 70.h,
                width: 60.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
              ),
            ),
            SizedBox(
              height: 18.sp,
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 12.sp),
                ),
              ),
            ),
            SizedBox(
              width: 350.w,
              height: 50.h,
              child: FilledButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r))),
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  GoRouter.of(context).goNamed(Routes.home.name);
                },
                child: Text(
                  "Submite",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: Typo.ManropeRegular,
                      fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
