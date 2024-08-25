import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../gen/assets.gen.dart';
import 'onboarding.dart';

class OnboardingThird extends StatelessWidget {
  const OnboardingThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Onboarding(
          backgroundImage: Assets.images.qualityBackground.path,
          title: "Local",
          subTitle:
              "We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time. ",
          index: 2,
          color: AppColors.orange,
        ),
      ),
    );
  }
}
