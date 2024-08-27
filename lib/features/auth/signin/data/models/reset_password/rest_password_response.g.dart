// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordResponse _$ResetPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      isVerified: json['isVerified'] as bool?,
    );

Map<String, dynamic> _$ResetPasswordResponseToJson(
        ResetPasswordResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'isVerified': instance.isVerified,
    };
