// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModels _$UserModelsFromJson(Map<String, dynamic> json) => _UserModels(
  userId: json['userId'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  hasActiveCart: json['hasActiveCart'] as bool? ?? false,
);

Map<String, dynamic> _$UserModelsToJson(_UserModels instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'hasActiveCart': instance.hasActiveCart,
    };
