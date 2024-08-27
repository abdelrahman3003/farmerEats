import 'package:farmereats/core/class/navigator.dart';
import 'package:farmereats/core/constants/routes.dart';
import 'package:farmereats/core/theme/colors.dart';
import 'package:farmereats/core/theme/widget/app_button.dart';
import 'package:farmereats/core/theme/widget/app_textformfield.dart';
import 'package:farmereats/features/auth/signin/presentation/controller/forget_password/forgetpassword_cubit.dart';
import 'package:farmereats/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/theme/widget/alerdialog.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ForgetpasswordCubit>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: BlocListener<ForgetpasswordCubit, ForgetpasswordState>(
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
                    context.pushNameed(Routes.kverifyOtpView),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 140.h),
                Text(
                  "Forgot Password?",
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
                        context.pushNameed(Routes.kverifyOtpView);
                      },
                      child: Text(
                        "Login",
                        style: Styles.font14black400w.copyWith(
                            color: AppColors.red, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                AppTextformfield(
                  hint: "Phone Number",
                  controller: cubit.phoneController,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(Assets.icons.phone),
                  ),
                ),
                SizedBox(height: 32.h),
                AppButton(
                  text: "Send Code",
                  color: AppColors.red,
                  onPressed: () {
                    cubit.emitForgetPasswordStates();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
