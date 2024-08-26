import 'package:bloc/bloc.dart';
import 'package:farmereats/features/auth/signin/data/models/forget_password/forget_password_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/forget_password/forget_password_response.dart';
import 'package:farmereats/features/auth/signin/data/repos/forget_password_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgetpassword_state.dart';
part 'forgetpassword_cubit.freezed.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit(this.forgetPasswordRepo)
      : super(const ForgetpasswordState.initial());
  final ForgetPasswordRepo forgetPasswordRepo;

  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitForgetPasswordStates() async {
    emit(const ForgetpasswordState.loading());
    final response = await forgetPasswordRepo
        .sendCode(ForgetPasswordRequestBody(mobile: phoneController.text));
    response.when(
      sucess: (data) {
        emit(ForgetpasswordState.success(data));
      },
      failure: (errorMessage) {
        emit(ForgetpasswordState.error(errorMessage));
      },
    );
  }
}
