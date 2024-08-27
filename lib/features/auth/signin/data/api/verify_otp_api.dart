import 'package:dio/dio.dart';
import 'package:farmereats/features/auth/signin/data/models/verify_otp/verify_otp_response.dart';
import 'package:retrofit/http.dart';

import '../../../../../core/network/api_constants.dart';
import '../models/verify_otp/verify_otp_request_body.dart';
part 'verify_otp_api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class VerifyOtpApi {
  factory VerifyOtpApi(Dio dio) = _VerifyOtpApi;
  @POST(ApiConstants.verifyOtp)
  Future<VerifyOtpResponse> verify(
    @Body() VerifyOtpRequestBody verifyOtpRequestBody,
  );
}
