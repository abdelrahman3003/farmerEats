import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
   factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //auth
  // @POST(ApiConstants.signin)
  // Future<LoginRespons> login(
  //   @Body() LoginRequsetBody loginRequsetBody,
  // );
//   @POST(ApiConstants.register)
//   Future<SignupResponse> signUp(
//     @Body() SignupRequestBody signupRequestBody,
//   );

// //fetch data home
//   @GET(ApiConstants.home)
//   Future<Catergories> fetchDataHomeFromRepo();
}
