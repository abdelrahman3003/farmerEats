
import 'package:farmereats/features/auth/signin/presentation/view/signin_view.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/view/onboarding_view.dart';

class Routes {
  static const String konboardingView = '/onboardingView';
  static const String ksignupView = '/signupView';

  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case konboardingView:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      case "/":
               return MaterialPageRoute(builder: (context) => const SignupView());


      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defind for ${setting.name}"),
            ),
          ),
        );
    }
  }
}
