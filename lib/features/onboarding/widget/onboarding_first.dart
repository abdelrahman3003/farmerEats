import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/features/onboarding/widget/onboarding.dart';
import 'package:farmereats/features/onboarding/widget/onboarding_second.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardingFirst extends StatelessWidget {
  const OnboardingFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Onboarding(
          backgroundImage: Assets.images.qualityBackground.path,
          title: "Quality",
          subTitle:
              "Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain. ",
          index: 0,
          color: AppColors.green,
          onPressed: () {
            context.push(const OnboardingSecond());
          },
        ),
      ),
    );
  }
}
