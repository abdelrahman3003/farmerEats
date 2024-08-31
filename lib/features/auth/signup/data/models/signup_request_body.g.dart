// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      role: json['role'] as String,
      businessName: json['businessName'] as String,
      informalName: json['informalName'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: (json['zipCode'] as num).toInt(),
      registrationProof: json['registrationProof'] as String,
      businessHours:
          BusinessHours.fromJson(json['businessHours'] as Map<String, dynamic>),
      deviceToken: json['deviceToken'] as String,
      type: json['type'] as String,
      socialId: json['socialId'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'role': instance.role,
      'businessName': instance.businessName,
      'informalName': instance.informalName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'registrationProof': instance.registrationProof,
      'businessHours': instance.businessHours,
      'deviceToken': instance.deviceToken,
      'type': instance.type,
      'socialId': instance.socialId,
    };

BusinessHours _$BusinessHoursFromJson(Map<String, dynamic> json) =>
    BusinessHours(
      mon: (json['mon'] as List<dynamic>).map((e) => e as String).toList(),
      tue: (json['tue'] as List<dynamic>).map((e) => e as String).toList(),
      wed: (json['wed'] as List<dynamic>).map((e) => e as String).toList(),
      thu: (json['thu'] as List<dynamic>).map((e) => e as String).toList(),
      fri: (json['fri'] as List<dynamic>).map((e) => e as String).toList(),
      sat: (json['sat'] as List<dynamic>).map((e) => e as String).toList(),
      sun: (json['sun'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BusinessHoursToJson(BusinessHours instance) =>
    <String, dynamic>{
      'mon': instance.mon,
      'tue': instance.tue,
      'wed': instance.wed,
      'thu': instance.thu,
      'fri': instance.fri,
      'sat': instance.sat,
      'sun': instance.sun,
    };
