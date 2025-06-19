// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModels implements DiagnosticableTreeMixin {

 String get userId; String get name; String get email; bool get hasActiveCart;
/// Create a copy of UserModels
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelsCopyWith<UserModels> get copyWith => _$UserModelsCopyWithImpl<UserModels>(this as UserModels, _$identity);

  /// Serializes this UserModels to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserModels'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('hasActiveCart', hasActiveCart));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModels&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.hasActiveCart, hasActiveCart) || other.hasActiveCart == hasActiveCart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,email,hasActiveCart);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserModels(userId: $userId, name: $name, email: $email, hasActiveCart: $hasActiveCart)';
}


}

/// @nodoc
abstract mixin class $UserModelsCopyWith<$Res>  {
  factory $UserModelsCopyWith(UserModels value, $Res Function(UserModels) _then) = _$UserModelsCopyWithImpl;
@useResult
$Res call({
 String userId, String name, String email, bool hasActiveCart
});




}
/// @nodoc
class _$UserModelsCopyWithImpl<$Res>
    implements $UserModelsCopyWith<$Res> {
  _$UserModelsCopyWithImpl(this._self, this._then);

  final UserModels _self;
  final $Res Function(UserModels) _then;

/// Create a copy of UserModels
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? email = null,Object? hasActiveCart = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,hasActiveCart: null == hasActiveCart ? _self.hasActiveCart : hasActiveCart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UserModels with DiagnosticableTreeMixin implements UserModels {
  const _UserModels({required this.userId, required this.name, required this.email, this.hasActiveCart = false});
  factory _UserModels.fromJson(Map<String, dynamic> json) => _$UserModelsFromJson(json);

@override final  String userId;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool hasActiveCart;

/// Create a copy of UserModels
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelsCopyWith<_UserModels> get copyWith => __$UserModelsCopyWithImpl<_UserModels>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserModels'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('hasActiveCart', hasActiveCart));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModels&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.hasActiveCart, hasActiveCart) || other.hasActiveCart == hasActiveCart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,email,hasActiveCart);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserModels(userId: $userId, name: $name, email: $email, hasActiveCart: $hasActiveCart)';
}


}

/// @nodoc
abstract mixin class _$UserModelsCopyWith<$Res> implements $UserModelsCopyWith<$Res> {
  factory _$UserModelsCopyWith(_UserModels value, $Res Function(_UserModels) _then) = __$UserModelsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String name, String email, bool hasActiveCart
});




}
/// @nodoc
class __$UserModelsCopyWithImpl<$Res>
    implements _$UserModelsCopyWith<$Res> {
  __$UserModelsCopyWithImpl(this._self, this._then);

  final _UserModels _self;
  final $Res Function(_UserModels) _then;

/// Create a copy of UserModels
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? email = null,Object? hasActiveCart = null,}) {
  return _then(_UserModels(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,hasActiveCart: null == hasActiveCart ? _self.hasActiveCart : hasActiveCart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
