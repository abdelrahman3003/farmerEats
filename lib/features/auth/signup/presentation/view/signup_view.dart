import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/constants/routes.dart';
import 'package:farmereats/features/auth/signin/presentation/view/signin_view.dart';
import 'package:farmereats/features/auth/signup/presentation/view/farm_info._view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/app_button.dart';
import '../../../../../core/theme/widget/app_textformfield.dart';
import '../../../../../gen/assets.gen.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                Text(
                  "Signup ",
                  style: Styles.font18blackew700,
                ),
                SizedBox(height: 20.h),
                Text(
                  "Welcome!",
                  style: Styles.font32black700w,
                ),
                SizedBox(height: 75.h),
                AppTextformfield(
                  hint: "Full Name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      Assets.icons.person,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
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
                    child: SvgPicture.asset(Assets.icons.phone),
                  ),
                  hint: "Phone Number",
                ),
                SizedBox(height: 24.h),
                AppTextformfield(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(Assets.icons.password),
                  ),
                  hint: "Password",
                ),
                SizedBox(height: 24.h),
                AppTextformfield(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(Assets.icons.password),
                  ),
                  hint: "Re-enter Password",
                ),
                SizedBox(height: 100.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushReplacementNamed(Routes.konboardingView);
                      },
                      child: Text(
                        "Login",
                        style: Styles.font14black400w.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(width: 32.w),
                    Expanded(
                      child: AppButton(
                        text: "Continue",
                        color: AppColors.red,
                        onPressed: () {
                          context.pushNameed(Routes.ksigninView);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
