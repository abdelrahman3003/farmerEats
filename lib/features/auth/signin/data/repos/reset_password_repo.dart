import 'package:farmereats/features/auth/signin/data/api/reset_password_api.dart';

import '../../../../../core/network/api_result.dart';
import '../models/reset_password/rest_password_response.dart';

class ResetPasswordRepo {
  final ResetPasswordApi resetPasswordApi;

  ResetPasswordRepo(this.resetPasswordApi);

  Future<ApiResult<ResetPasswordResponse>> submit(
      resetPasswordRequestBody) async {
    try {
      final response =
          await resetPasswordApi.submit(resetPasswordRequestBody);
      if (response.success) {
        return ApiResult.sucess(response);
      }
      return ApiResult.failure(response.message);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
