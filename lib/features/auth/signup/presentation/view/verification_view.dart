import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/app_button.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Text(
                "Verification",
                style: Styles.font32black700w,
              ),
              SizedBox(height: 30.h),
              Opacity(
                opacity: .4,
                child: Text(
                  "Choose the hours your farm is open for pickups. This will allow customers to order deliveries.",
                  style: Styles.font14black400w,
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Attach proof of registration",
                      style: Styles.font14black400w,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.red,
                    radius: 28,
                    child: SvgPicture.asset(Assets.icons.camera),
                  )
                ],
              ),
              const Spacer(),
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
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
