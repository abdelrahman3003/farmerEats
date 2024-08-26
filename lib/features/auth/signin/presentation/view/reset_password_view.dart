import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/theme/widget/app_textformfield.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/app_button.dart';
import 'signin_view.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 140.h),
            Text(
              "Reset Password",
              style: Styles.font32black700w,
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                Opacity(
                  opacity: .3,
                  child: Text(
                    "Remember your pasword?  ",
                    style: Styles.font14black400w,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.push(const SigninView());
                  },
                  child: Text(
                    "Login",
                    style: Styles.font14black400w.copyWith(
                        color: AppColors.red, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 72.h),
            AppTextformfield(
              hint: 'New Password',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  Assets.icons.password,
                ),
              ),
            ),
            SizedBox(height: 24.h),
            AppTextformfield(
              hint: 'Confirm New Password',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  Assets.icons.password,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            const AppButton(text: "Submit", color: AppColors.red),
          ],
        ),
      ),
    );
  }
}
