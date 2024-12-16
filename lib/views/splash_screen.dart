import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/asseturl.dart';
import 'package:travel/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late GifController _gifController;

  changescreen() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).goNamed(Routes.landing.name);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gifController = GifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _gifController.repeat(max: 1, min: 0, period: Duration(seconds: 2));
    });
    changescreen();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _gifController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 192.h,
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
              height: 45.h,
            ),
            Gif(
              height: 337.h,
              width: 345.w,
              // fit: BoxFit.cover,
              image: AssetImage(
                Asseturl.mapgif,
              ),
              controller: _gifController,
            ),
          ],
        ),
      ),
    );
  }
}
