import 'package:farmereats/features/auth/signin/data/models/signin_response.dart';

import '../../../../../core/network/api_result.dart';
import '../api/signin_api.dart';

class SigninRepo {
  final SigninApiService signinApiService;

  SigninRepo(this.signinApiService);

  Future<ApiResult<SigninResponse>> signin(signinRequestBody) async {
    try {
      final response = await signinApiService.signin(signinRequestBody);
      if (response.success!) {
        return ApiResult.sucess(response);
      }
      return ApiResult.failure(response.message ?? "");
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
