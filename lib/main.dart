import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/home.dart';
import 'package:travel/views/home_screen.dart';
import 'package:travel/views/landing_screen.dart';
import 'package:travel/views/landing_screen_2.dart';
import 'package:travel/views/login_screen.dart';
import 'package:travel/views/otpscreen.dart';
import 'package:travel/views/splash_screen.dart';

enum Routes { splash, landing, landing2, login, otp, home }

void main() {
  runApp(Travel());
}

class Travel extends StatelessWidget {
  Travel({super.key});

  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      name: Routes.splash.name,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: "/landing",
      name: Routes.landing.name,
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      path: "/landing2",
      name: Routes.landing2.name,
      builder: (context, state) => LandingScreen2(),
    ),
    GoRoute(
        path: "/login",
        name: Routes.login.name,
        builder: (context, state) => LoginScreen(),
        routes: [
          GoRoute(
            path: "/otp",
            name: Routes.otp.name,
            builder: (context, state) => Otpscreen(),
          ),
        ]),
    GoRoute(
      path: "/home",
      name: Routes.home.name,
      builder: (context, state) => Home(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
