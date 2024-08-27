import 'package:bloc/bloc.dart';
import 'package:farmereats/features/auth/signin/data/models/reset_password/reset_password_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/reset_password/rest_password_response.dart';
import 'package:farmereats/features/auth/signin/data/repos/reset_password_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.resetPasswordRepo) : super(ResetPasswordState.initial());
    final ResetPasswordRepo resetPasswordRepo;

  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitForgetPasswordStates() async {
    emit(const ResetPasswordState.loading());
    final response = await resetPasswordRepo
        .submit(ResetPasswordRequestBody(token: "token", password: passwordController.text, cpassword: cPasswordController.text));
    response.when(
      sucess: (data) {
        emit(ResetPasswordState.success(data));
      },
      failure: (errorMessage) {
        emit(ResetPasswordState.error(errorMessage));
      },
    );
  }
}
