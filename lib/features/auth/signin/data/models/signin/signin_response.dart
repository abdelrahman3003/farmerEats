import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_response.g.dart';

@JsonSerializable()
class SigninResponse {
  bool? success;
  String? message;
  String? token;
  User? user;
  @JsonKey(name: 'account_preference')
  AccountPreference? accountPreference;
  @JsonKey(name: 'notification_settings')
  NotificationSettings? notificationSettings;
  bool? isVerified;

  SigninResponse(
      {this.success,
      this.message,
      this.token,
      this.user,
      this.accountPreference,
      this.notificationSettings,
      this.isVerified});
       factory SigninResponse.fromJson(Map<String, dynamic> json) => _$SigninResponseFromJson(json);
}

@JsonSerializable()
class User {
  String? id;
  String? avatar;
  @JsonKey(name: 'full_name')
  String? fullName;
  String? email;
  @JsonKey(name: 'device_token')
  String? deviceToken;
  String? type;
  @JsonKey(name: 'social_id')
  String? socialId;

  User(
      {this.id,
      this.avatar,
      this.fullName,
      this.email,
      this.deviceToken,
      this.type,
      this.socialId});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable()
class AccountPreference {
  String? locale;
  @JsonKey(name: 'time_zone')
  String? timeZone;
  String? currency;

  AccountPreference({this.locale, this.timeZone, this.currency});
  factory AccountPreference.fromJson(Map<String, dynamic> json) =>
      _$AccountPreferenceFromJson(json);
}
@JsonSerializable()
class NotificationSettings {
  String? notificationSettings;
  String? minBidThreshold;

  NotificationSettings({this.notificationSettings, this.minBidThreshold});

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);
}
