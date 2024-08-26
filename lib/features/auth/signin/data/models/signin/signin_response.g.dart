// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SigninResponse _$SigninResponseFromJson(Map<String, dynamic> json) =>
    SigninResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      accountPreference: json['account_preference'] == null
          ? null
          : AccountPreference.fromJson(
              json['account_preference'] as Map<String, dynamic>),
      notificationSettings: json['notification_settings'] == null
          ? null
          : NotificationSettings.fromJson(
              json['notification_settings'] as Map<String, dynamic>),
      isVerified: json['isVerified'] as bool?,
    );

Map<String, dynamic> _$SigninResponseToJson(SigninResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'token': instance.token,
      'user': instance.user,
      'account_preference': instance.accountPreference,
      'notification_settings': instance.notificationSettings,
      'isVerified': instance.isVerified,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      avatar: json['avatar'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      deviceToken: json['device_token'] as String?,
      type: json['type'] as String?,
      socialId: json['social_id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'full_name': instance.fullName,
      'email': instance.email,
      'device_token': instance.deviceToken,
      'type': instance.type,
      'social_id': instance.socialId,
    };

AccountPreference _$AccountPreferenceFromJson(Map<String, dynamic> json) =>
    AccountPreference(
      locale: json['locale'] as String?,
      timeZone: json['time_zone'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$AccountPreferenceToJson(AccountPreference instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'time_zone': instance.timeZone,
      'currency': instance.currency,
    };

NotificationSettings _$NotificationSettingsFromJson(
        Map<String, dynamic> json) =>
    NotificationSettings(
      notificationSettings: json['notificationSettings'] as String?,
      minBidThreshold: json['minBidThreshold'] as String?,
    );

Map<String, dynamic> _$NotificationSettingsToJson(
        NotificationSettings instance) =>
    <String, dynamic>{
      'notificationSettings': instance.notificationSettings,
      'minBidThreshold': instance.minBidThreshold,
    };
