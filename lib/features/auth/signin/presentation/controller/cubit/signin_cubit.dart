import 'package:bloc/bloc.dart';
import 'package:farmereats/features/auth/signin/data/models/signin_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/signin_response.dart';
import 'package:farmereats/features/auth/signin/data/repos/signin_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.dart';
part 'signin_cubit.freezed.dart';

class SigninCubit extends Cubit<SigninState> {
  final SigninRepo signinRepo;
  SigninCubit(this.signinRepo) : super(const SigninState.initial());
  TextEditingController emailController =
      TextEditingController(text: "abdelrahmatemsah29@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "123456");
  final formKey = GlobalKey<FormState>();
  void emitSigninStates() async {
    emit(const SigninState.loading());
    final response = await signinRepo.signin(SigninRequestBody(
        email: emailController.text,
        password: passwordController.text,
        role: "farmer",
        deviceToken: "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx",
        type: "email/facebook/google/apple",
        socialId: "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx"));
    response.when(
      sucess: (data) {
        emit(SigninState.success(data));
      },
      failure: (errorMessage) {
        emit(SigninState.error(errorMessage));
      },
    );
  }
}
