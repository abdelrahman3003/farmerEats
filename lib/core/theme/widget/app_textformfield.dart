import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import '../styles.dart';

class AppTextformfield extends StatelessWidget {
  const AppTextformfield(
      {super.key,
      this.hint,
      this.isPassword = false,
      this.onPressedEye,
      this.isShowPassword = false,
      this.controller,
      this.validator,
      this.keyboardType,
      this.prefixIcon});
  final String? hint;
  final bool isPassword;
  final Function()? onPressedEye;
  final TextInputType? keyboardType;
  final bool isShowPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ? !isShowPassword : false,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: Styles.font14black400w.copyWith(color: Colors.grey),
          prefixIcon: prefixIcon,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.grey)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.red)),
          filled: true,
          fillColor: AppColors.grey,
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: onPressedEye,
                  icon: Icon(
                    isShowPassword
                        ? Icons.visibility_off
                        : Icons.visibility_rounded,
                    color: AppColors.black,
                  ))
              : null),
    );
  }
}
