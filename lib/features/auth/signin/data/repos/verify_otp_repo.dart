import 'package:farmereats/features/auth/signin/data/api/verify_otp_api.dart';
import 'package:farmereats/features/auth/signin/data/models/verify_otp/verify_otp_response.dart';

import '../../../../../core/network/api_result.dart';

class VerifyOtpRepo {
  final VerifyOtpApi verifyOtpApi;

  VerifyOtpRepo(this.verifyOtpApi);

  Future<ApiResult<VerifyOtpResponse>> verify(verifyOtpRequestBody) async {
    try {
      final response = await verifyOtpApi.verify(verifyOtpRequestBody);
      if (response.success) {
        return ApiResult.sucess(response);
      }
      return ApiResult.failure(response.message);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
