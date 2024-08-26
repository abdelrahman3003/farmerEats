// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SigninRequestBody _$SigninRequestBodyFromJson(Map<String, dynamic> json) =>
    SigninRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as String,
      deviceToken: json['device_token'] as String,
      type: json['type'] as String,
      socialId: json['social_id'] as String,
    );

Map<String, dynamic> _$SigninRequestBodyToJson(SigninRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'device_token': instance.deviceToken,
      'type': instance.type,
      'social_id': instance.socialId,
    };
