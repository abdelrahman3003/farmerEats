import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/core/theme/styles.dart';
import 'package:farmereats/core/theme/widget/app_button.dart';
import 'package:farmereats/core/theme/widget/app_textformfield.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back!",
                style: Styles.font32black700w,
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Text(
                    "New here?",
                    style: Styles.font14black400w,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Create account",
                    style: Styles.font16whitew600.copyWith(
                      color: AppColors.red,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 75.h),
              AppTextformfield(
                hint: "Email Address",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    Assets.icons.a,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              AppTextformfield(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(Assets.icons.password),
                ),
                hint: "Password",
              ),
              SizedBox(height: 32.h),
              const AppButton(
                text: "Login",
                color: AppColors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
