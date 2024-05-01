import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hamkelasi/pages/homeScreen.dart';
import 'package:hamkelasi/pages/loginScreen.dart';
import '../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 2)).then((value) => Get.to(HomeScreen()));
    // // TODO: implement initState
    // super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      try {
        Get.to(LoginPage());
      } catch (error) {
        print("Error navigating to HomeScreen: $error");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Assets.img.splash.image(fit: BoxFit.cover)),
    );
  }
}
