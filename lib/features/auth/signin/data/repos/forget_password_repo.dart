import 'package:farmereats/features/auth/signin/data/api/forget_password_api.dart';
import 'package:farmereats/features/auth/signin/data/models/forget_password/forget_password_response.dart';

import '../../../../../core/network/api_result.dart';

class ForgetPasswordRepo {
  final ForgetPasswordApi forgetPasswordApi;

  ForgetPasswordRepo(this.forgetPasswordApi);

  Future<ApiResult<ForgetPasswordResponse>> sendCode(
      forgetPasswordRequestBody) async {
    try {
      final response =
          await forgetPasswordApi.sendCode(forgetPasswordRequestBody);
      if (response.success!) {
        return ApiResult.sucess(response);
      }
      return ApiResult.failure(response.message ?? "");
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
