// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SigninModel _$SigninModelFromJson(Map<String, dynamic> json) {
  return _SigninModel.fromJson(json);
}

/// @nodoc
mixin _$SigninModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninModelCopyWith<SigninModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninModelCopyWith<$Res> {
  factory $SigninModelCopyWith(
          SigninModel value, $Res Function(SigninModel) then) =
      _$SigninModelCopyWithImpl<$Res, SigninModel>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$SigninModelCopyWithImpl<$Res, $Val extends SigninModel>
    implements $SigninModelCopyWith<$Res> {
  _$SigninModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigninModelCopyWith<$Res>
    implements $SigninModelCopyWith<$Res> {
  factory _$$_SigninModelCopyWith(
          _$_SigninModel value, $Res Function(_$_SigninModel) then) =
      __$$_SigninModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$_SigninModelCopyWithImpl<$Res>
    extends _$SigninModelCopyWithImpl<$Res, _$_SigninModel>
    implements _$$_SigninModelCopyWith<$Res> {
  __$$_SigninModelCopyWithImpl(
      _$_SigninModel _value, $Res Function(_$_SigninModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SigninModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SigninModel implements _SigninModel {
  const _$_SigninModel({this.email, this.password});

  factory _$_SigninModel.fromJson(Map<String, dynamic> json) =>
      _$$_SigninModelFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'SigninModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigninModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigninModelCopyWith<_$_SigninModel> get copyWith =>
      __$$_SigninModelCopyWithImpl<_$_SigninModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SigninModelToJson(
      this,
    );
  }
}

abstract class _SigninModel implements SigninModel {
  const factory _SigninModel({final String? email, final String? password}) =
      _$_SigninModel;

  factory _SigninModel.fromJson(Map<String, dynamic> json) =
      _$_SigninModel.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_SigninModelCopyWith<_$_SigninModel> get copyWith =>
      throw _privateConstructorUsedError;
}
