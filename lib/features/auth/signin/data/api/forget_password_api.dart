import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/models/forget_password/forget_password_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/forget_password/forget_password_response.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/network/api_constants.dart';
part 'forget_password_api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ForgetPasswordApi {
  factory ForgetPasswordApi(Dio dio) = _ForgetPasswordApi;
  @POST(ApiConstants.fogetPassword)
  Future<ForgetPasswordResponse> sendCode(
    @Body() ForgetPasswordRequestBody forgetPasswordRequestBody,
  );
}
