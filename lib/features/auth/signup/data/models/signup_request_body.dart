import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  String fullName;
  String email;
  String phone;
  String password;
  String role;
  String businessName;
  String informalName;
  String address;
  String city;
  String state;
  int zipCode;
  String registrationProof;
  BusinessHours businessHours;
  String deviceToken;
  String type;
  String socialId;

  SignupRequestBody(
      {required this.fullName,
      required this.email,
      required this.phone,
      required this.password,
      required this.role,
      required this.businessName,
      required this.informalName,
      required this.address,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.registrationProof,
      required this.businessHours,
      required this.deviceToken,
      required this.type,
      required this.socialId});
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}

@JsonSerializable()
class BusinessHours {
  List<String> mon;
  List<String> tue;
  List<String> wed;
  List<String> thu;
  List<String> fri;
  List<String> sat;
  List<String> sun;

  BusinessHours({
    required this.mon,
    required this.tue,
    required this.wed,
    required this.thu,
    required this.fri,
    required this.sat,
    required this.sun,
  });
  Map<String, dynamic> toJson() => _$BusinessHoursToJson(this);
  factory BusinessHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursFromJson(json);
}
