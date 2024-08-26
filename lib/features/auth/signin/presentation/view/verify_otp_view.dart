import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/features/auth/signin/presentation/view/reset_password_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/app_button.dart';

import '../../../signup/presentation/view/signup_view.dart';

class VerifyOtpView extends StatelessWidget {
  const VerifyOtpView({super.key});

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
              "Verify OTP",
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
                    context.push(const SignupView());
                  },
                  child: Text(
                    "Login",
                    style: Styles.font14black400w.copyWith(
                        color: AppColors.red, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.h),
            OtpTextField(
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              borderRadius: BorderRadius.circular(8),
              fieldHeight: 60.h,
              fieldWidth: 58,
              filled: true,
              fillColor: AppColors.grey,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            SizedBox(height: 30.h),
            AppButton(
              text: "Submit",
              color: AppColors.red,
              onPressed: () {
                context.push(const ResetPasswordView());
              },
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.center,
              child: Text("Resend Code",
                  style: Styles.font14black400w
                      .copyWith(decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
    );
  }
}
