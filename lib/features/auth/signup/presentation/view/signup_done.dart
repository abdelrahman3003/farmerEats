import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/core/theme/widget/app_button.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/styles.dart';

class SignupDone extends StatelessWidget {
  const SignupDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(height: 100.h),
            SvgPicture.asset(Assets.icons.check),
            SizedBox(height: 24.h),
            Text(
              "You’re all done!",
              style: Styles.font32black700w,
            ),
            SizedBox(height: 24.h),
            Text(
              "Hang tight!  We are currently reviewing your account and will follow up with you in 2-3 business days. In the meantime, you can setup your inventory.",
              style: Styles.font14black400w,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            const AppButton(text: "Got it!", color: AppColors.red),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
