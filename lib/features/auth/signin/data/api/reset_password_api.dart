import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/models/reset_password/reset_password_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/reset_password/rest_password_response.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/network/api_constants.dart';
part 'reset_password_api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ResetPasswordApi {
  factory ResetPasswordApi(Dio dio) = _ResetPasswordApi;
  @POST(ApiConstants.resetPassword)
  Future<ResetPasswordResponse> submit(
    @Body() ResetPasswordRequestBody resetPasswordRequestBody,
  );
}
