import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/features/auth/signup/presentation/view/verification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/app_button.dart';
import '../../../../../core/theme/widget/app_textformfield.dart';
import '../../../../../gen/assets.gen.dart';

class FarmInfo extends StatelessWidget {
  const FarmInfo({super.key});

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
                SizedBox(height: 100.h),
                Text(
                  "Farm Info",
                  style: Styles.font32black700w,
                ),
                SizedBox(height: 75.h),
                AppTextformfield(
                  hint: "Business Name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      Assets.icons.business,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                AppTextformfield(
                  hint: "Informal Name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      Assets.icons.informal,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                AppTextformfield(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(Assets.icons.home),
                  ),
                  hint: "Street Address",
                ),
                SizedBox(height: 24.h),
                AppTextformfield(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(Assets.icons.city),
                  ),
                  hint: "City",
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: const AppTextformfield(
                        hint: "State",
                      ),
                    ),
                    SizedBox(width: 30.h),
                    const Expanded(
                      child: AppTextformfield(
                        hint: "Enter Zipcode",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: SvgPicture.asset(Assets.icons.back)),
                    ),
                    SizedBox(width: 32.w),
                    Expanded(
                      child: AppButton(
                        text: "Continue",
                        color: AppColors.red,
                        onPressed: () {
                          context.push(const VerificationView());
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
