import 'package:farmereats/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/theme/widget/app_button.dart';
import 'points.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.index,
    required this.color,
    this.onPressed,
  });
  final String backgroundImage;
  final String title;
  final String subTitle;
  final int index;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(backgroundImage))),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.w),
                  child: Column(
                    children: [
                      SizedBox(height: 30.h),
                      Text(
                        title,
                        style: Styles.font24black700w,
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        subTitle,
                        style: Styles.font14black400w,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40.h),
                      Points(length: 3, selectedindex: index),
                      SizedBox(height: 60.h),
                      AppButton(
                        text: "Join the movement!",
                        color: color,
                        onPressed: onPressed,
                      ),
                      SizedBox(height: 10.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(Routes.ksigninView);
                        },
                        child: Text(
                          "Login",
                          style: Styles.font14black400w.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
