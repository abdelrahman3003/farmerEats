import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_request_body.g.dart';
@JsonSerializable()
class SigninRequestBody {
  final String email;
  final String password;
  final String role;
  @JsonKey(name: 'device_token')
  final String deviceToken;
  final String type;
  @JsonKey(name: 'social_id')
  final String socialId;

  SigninRequestBody({
    required this.email,
    required this.password,
    required this.role,
    required this.deviceToken,
    required this.type,
    required this.socialId,
  });
    Map<String, dynamic> toJson() => _$SigninRequestBodyToJson(this);
}
