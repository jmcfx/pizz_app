// ignore_for_file: invalid_annotation_target
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

@freezed
abstract class UserModels with _$UserModels {
  @JsonSerializable(explicitToJson: true)
  const factory UserModels({
    required String  userId,
    required String  name,
    required String  email,
    @Default(false) bool hasActiveCart,
    
  }) = _UserModels;

  factory UserModels.fromJson(Map<String, Object?> json) =>
      _$UserModelsFromJson(json);
}
