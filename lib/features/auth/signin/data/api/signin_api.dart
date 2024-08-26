import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/models/signin_request_body.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/network/api_constants.dart';
import '../models/signin_response.dart';
part 'signin_api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SigninApiService {
  factory SigninApiService(Dio dio) = _SigninApiService;

  @POST(ApiConstants.signin)
  Future<SigninResponse> signin(
    @Body() SigninRequestBody loginRequestBody,
  );
}
