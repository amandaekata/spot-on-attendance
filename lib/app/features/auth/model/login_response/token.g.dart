// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      tokenType: json['tokenType'] as String?,
      accessToken: json['accessToken'] as String?,
      accessTokenExpires: json['accessTokenExpires'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'tokenType': instance.tokenType,
      'accessToken': instance.accessToken,
      'accessTokenExpires': instance.accessTokenExpires,
      'refreshToken': instance.refreshToken,
    };
