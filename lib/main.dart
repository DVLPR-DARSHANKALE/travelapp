import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/landing_screen.dart';
import 'package:travel/views/splash_screen.dart';

enum Routes { splash, landing }

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
