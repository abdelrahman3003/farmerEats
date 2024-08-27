import 'package:farmereats/core/constants/dependecy_injection.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/forget_password/forgetpassword_cubit.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/reset_password/reset_password_cubit.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/signin/signin_cubit.dart';
import 'package:farmereats/features/auth/signin/presentation/view/forget_password_view.dart';
import 'package:farmereats/features/auth/signin/presentation/view/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/signup/presentation/view/signup_view.dart';
import '../../features/onboarding/view/onboarding_view.dart';

class Routes {
  static const String konboardingView = '/onboardingView';
  static const String ksignupView = '/signupView';
  static const String ksigninView = '/signinView';
  static const String kforgetPassword = '/forgetPassword';
  static const String kverifyOtpView = '/verifyOtpView';
  static const String kresetPasswordView = '/resetPasswordView';

  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case konboardingView:
        return MaterialPageRoute(builder: (context) => const OnboardingView());

      case ksignupView:
        return MaterialPageRoute(builder: (context) => const SignupView());
      case ksigninView:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => SigninCubit(getit()),
                  child: const SigninView(),
                ));
      case kforgetPassword:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => ForgetpasswordCubit(getit()),
                  child: const ForgetPasswordView(),
                ));
      case kverifyOtpView:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView());
      case kresetPasswordView:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => ResetPasswordCubit(getit()),
                  child: const ForgetPasswordView(),
                ));
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
