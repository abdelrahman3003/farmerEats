import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/constants/routes.dart';
import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/core/theme/styles.dart';
import 'package:farmereats/core/theme/widget/app_button.dart';
import 'package:farmereats/core/theme/widget/app_textformfield.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/signin/signin_cubit.dart';
import 'package:farmereats/features/onboarding/view/widget/onboarding_first.dart';

import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/widget/alerdialog.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<SigninCubit>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: BlocListener<SigninCubit, SigninState>(
            listener: (context, state) {
              state.whenOrNull(
                  loading: () {
                    showDialog(
                      context: context,
                      builder: (context) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                  success: (signinresponse) =>
                      context.push(const OnboardingFirst()),
                  error: (errorMessage) {
                    context.pop();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AppAlerdialog(
                            title: "Error", subTitle: errorMessage);
                      },
                    );
                  });
            },
            child: Form(
              key: cubit.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!",
                    style: Styles.font32black700w,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    children: [
                      Text(
                        "New here?",
                        style: Styles.font14black400w,
                      ),
                      SizedBox(width: 10.w),
                      GestureDetector(
                        onTap: () {
                          context.pushNameed(Routes.ksignupView);
                        },
                        child: Text(
                          "Create account",
                          style: Styles.font16whitew600.copyWith(
                            color: AppColors.red,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 75.h),
                  AppTextformfield(
                    controller: cubit.emailController,
                    hint: "Email Address",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        Assets.icons.a,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  AppTextformfield(
                    controller: cubit.passwordController,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(Assets.icons.password),
                    ),
                    hint: "Password",
                  ),
                  SizedBox(height: 8.h),
                  GestureDetector(
                    onTap: () {
                      context.pushNameed(Routes.kforgetPassword);
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password",
                        style: Styles.font16whitew600.copyWith(
                          color: AppColors.red,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  AppButton(
                    text: "Login",
                    color: AppColors.red,
                    onPressed: () {
                      cubit.emitSigninStates();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
