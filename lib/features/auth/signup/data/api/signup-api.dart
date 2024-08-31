import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/models/signin/signin_request_body.dart';
import 'package:farmereats/features/auth/signin/data/models/signin/signin_response.dart';
import 'package:farmereats/features/auth/signup/data/models/signup_request_body.dart';
import 'package:farmereats/features/auth/signup/data/models/signup_response.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/network/api_constants.dart';

part 'signup-api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SignupApi {
  factory SignupApi(Dio dio) = _SignupApi;

  @POST(ApiConstants.signin)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
