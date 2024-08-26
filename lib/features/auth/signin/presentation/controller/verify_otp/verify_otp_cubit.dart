import 'package:bloc/bloc.dart';
import 'package:farmereats/features/auth/signin/data/models/verify_otp/verify_otp_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/verify_otp/verify_otp_response.dart';
import 'package:farmereats/features/auth/signin/data/repos/verify_otp_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_state.dart';
part 'verify_otp_cubit.freezed.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  VerifyOtpCubit(this.verifyOtpRepo) : super(const VerifyOtpState.initial());
  final VerifyOtpRepo verifyOtpRepo;

  void emitVerifyOtpStates(String code) async {
    emit(const VerifyOtpState.loading());
    final response = await verifyOtpRepo
        .verify(VerifyOtpRequestBody(otp: code));
    response.when(
      sucess: (data) {
        emit(VerifyOtpState.success(data));
      },
      failure: (errorMessage) {
        emit(VerifyOtpState.error(errorMessage));
      },
    );
  }
}
