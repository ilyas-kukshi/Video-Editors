// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
mixin _$PersonalInfo {
  String? get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) then) =
      _$PersonalInfoCopyWithImpl<$Res, PersonalInfo>;
  @useResult
  $Res call(
      {String? name,
      String? city,
      String? phoneNumber,
      String? email,
      String? id});
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res, $Val extends PersonalInfo>
    implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalInfoCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$$_PersonalInfoCopyWith(
          _$_PersonalInfo value, $Res Function(_$_PersonalInfo) then) =
      __$$_PersonalInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? city,
      String? phoneNumber,
      String? email,
      String? id});
}

/// @nodoc
class __$$_PersonalInfoCopyWithImpl<$Res>
    extends _$PersonalInfoCopyWithImpl<$Res, _$_PersonalInfo>
    implements _$$_PersonalInfoCopyWith<$Res> {
  __$$_PersonalInfoCopyWithImpl(
      _$_PersonalInfo _value, $Res Function(_$_PersonalInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_PersonalInfo(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfo implements _PersonalInfo {
  const _$_PersonalInfo(
      {this.name, this.city, this.phoneNumber, this.email, this.id});

  factory _$_PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalInfoFromJson(json);

  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? id;

  @override
  String toString() {
    return 'PersonalInfo(name: $name, city: $city, phoneNumber: $phoneNumber, email: $email, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, city, phoneNumber, email, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalInfoCopyWith<_$_PersonalInfo> get copyWith =>
      __$$_PersonalInfoCopyWithImpl<_$_PersonalInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalInfoToJson(
      this,
    );
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  const factory _PersonalInfo(
      {final String? name,
      final String? city,
      final String? phoneNumber,
      final String? email,
      final String? id}) = _$_PersonalInfo;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfo.fromJson;

  @override
  String? get name;
  @override
  String? get city;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalInfoCopyWith<_$_PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
