import 'package:bloc/bloc.dart';
import 'package:farmereats/features/auth/signup/data/models/signup_request_body.dart';
import 'package:farmereats/features/auth/signup/data/models/signup_response.dart';
import 'package:farmereats/features/auth/signup/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signupRepo) : super(const SignupState.initial());
  final SignupRepo signupRepo;
  TextEditingController naemController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController businessNameController = TextEditingController();
  TextEditingController informalNameController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  SignupRequestBody? signupRequestBody;

  void emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await signupRepo.signup(signupRequestBody);
    response.when(
      sucess: (data) {
        emit(SignupState.success(data));
      },
      failure: (errorMessage) {
        emit(SignupState.error(errorMessage));
      },
    );
  }
}
