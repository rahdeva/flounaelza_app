import 'package:flounaelza_app/resources/resources.dart';
import 'package:flounaelza_app/routes/page_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(PageName.LOGIN);
    });

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: AppImages.imgLogoTransparent.image(
          width: 80.w,
        ),
      ),
    );
  }
}
