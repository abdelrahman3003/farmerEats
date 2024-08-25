
import 'package:flutter/material.dart';

import '../../features/onboarding/onboarding_view.dart';

class Routes {
  static const String konboardingView = '/onboardingView';
  static const String ksinginView = '/singinView';
  static const String ksignupView = '/signupView';
  static const String kHomeView = '/homepage';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case konboardingView:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      // case ksignupView:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => getit<SignupCubit>(),
      //             child: const SignupView(),
      //           ));
      // case ksinginView:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => getit<LoginCubit>(),
      //             child: const SigninView(),
      //           ));

      // case kHomeView:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => getit<HomeCubit>(),
      //             child: const HomeView(),
      //           ));
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
