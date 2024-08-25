import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/features/onboarding/view/widget/onboarding.dart';
import 'package:farmereats/features/onboarding/view/widget/onboarding_third.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardingSecond extends StatelessWidget {
  const OnboardingSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Onboarding(
          backgroundImage: Assets.images.qualityBackground.path,
          title: "Convenient",
          subTitle:
              "Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.",
          index: 1,
          color: AppColors.red,
          onPressed: () {
            context.push(const OnboardingThird());
          },
        ),
      ),
    );
  }
}
