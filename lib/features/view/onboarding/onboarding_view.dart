import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/core/theme/styles.dart';
import 'package:farmereats/core/theme/widget/app_button.dart';
import 'package:farmereats/features/view/onboarding/widget/points.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                Assets.images.qualityBackground.path,
              ))),
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
                        "Quality",
                        style: Styles.font24black700w,
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        "Sell your farm fresh products directly to\n consumers, cutting out the middleman and\n reducing emissions of the global supply chain. ",
                        style: Styles.font14black400w,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40.h),
                      const Points(length: 3, selectedindex: 1),
                      SizedBox(height: 60.h),
                      const AppButton(text: "Join the movement!"),
                      SizedBox(height: 10.h),
                      Text(
                        "Login",
                        style: Styles.font14black400w.copyWith(
                          decoration: TextDecoration.underline,
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
