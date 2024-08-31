import 'package:farmereats/features/auth/signup/data/api/signup-api.dart';
import 'package:farmereats/features/auth/signup/data/models/signup_response.dart';

import '../../../../../core/network/api_result.dart';

class SignupRepo {
  final SignupApi signupApi;

  SignupRepo(this.signupApi);

  Future<ApiResult<SignupResponse>> signup(signupRequestBody) async {
    try {
      final response = await signupApi.signup(signupRequestBody);
      if (response.success) {
        return ApiResult.sucess(response);
      }
      return ApiResult.failure(response.message);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
