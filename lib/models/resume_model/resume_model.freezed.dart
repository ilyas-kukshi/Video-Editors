// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) {
  return _ResumeModel.fromJson(json);
}

/// @nodoc
mixin _$ResumeModel {
  String? get userId => throw _privateConstructorUsedError;
  PersonalInfo? get personalInfo => throw _privateConstructorUsedError;
  List<Education>? get education => throw _privateConstructorUsedError;
  List<Skill>? get skills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeModelCopyWith<ResumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeModelCopyWith<$Res> {
  factory $ResumeModelCopyWith(
          ResumeModel value, $Res Function(ResumeModel) then) =
      _$ResumeModelCopyWithImpl<$Res, ResumeModel>;
  @useResult
  $Res call(
      {String? userId,
      PersonalInfo? personalInfo,
      List<Education>? education,
      List<Skill>? skills});

  $PersonalInfoCopyWith<$Res>? get personalInfo;
}

/// @nodoc
class _$ResumeModelCopyWithImpl<$Res, $Val extends ResumeModel>
    implements $ResumeModelCopyWith<$Res> {
  _$ResumeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? personalInfo = freezed,
    Object? education = freezed,
    Object? skills = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalInfoCopyWith<$Res>? get personalInfo {
    if (_value.personalInfo == null) {
      return null;
    }

    return $PersonalInfoCopyWith<$Res>(_value.personalInfo!, (value) {
      return _then(_value.copyWith(personalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResumeModelCopyWith<$Res>
    implements $ResumeModelCopyWith<$Res> {
  factory _$$_ResumeModelCopyWith(
          _$_ResumeModel value, $Res Function(_$_ResumeModel) then) =
      __$$_ResumeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      PersonalInfo? personalInfo,
      List<Education>? education,
      List<Skill>? skills});

  @override
  $PersonalInfoCopyWith<$Res>? get personalInfo;
}

/// @nodoc
class __$$_ResumeModelCopyWithImpl<$Res>
    extends _$ResumeModelCopyWithImpl<$Res, _$_ResumeModel>
    implements _$$_ResumeModelCopyWith<$Res> {
  __$$_ResumeModelCopyWithImpl(
      _$_ResumeModel _value, $Res Function(_$_ResumeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? personalInfo = freezed,
    Object? education = freezed,
    Object? skills = freezed,
  }) {
    return _then(_$_ResumeModel(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo?,
      education: freezed == education
          ? _value._education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Education>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResumeModel implements _ResumeModel {
  const _$_ResumeModel(
      {this.userId,
      this.personalInfo,
      final List<Education>? education,
      final List<Skill>? skills})
      : _education = education,
        _skills = skills;

  factory _$_ResumeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResumeModelFromJson(json);

  @override
  final String? userId;
  @override
  final PersonalInfo? personalInfo;
  final List<Education>? _education;
  @override
  List<Education>? get education {
    final value = _education;
    if (value == null) return null;
    if (_education is EqualUnmodifiableListView) return _education;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Skill>? _skills;
  @override
  List<Skill>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResumeModel(userId: $userId, personalInfo: $personalInfo, education: $education, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResumeModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            const DeepCollectionEquality()
                .equals(other._education, _education) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      personalInfo,
      const DeepCollectionEquality().hash(_education),
      const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResumeModelCopyWith<_$_ResumeModel> get copyWith =>
      __$$_ResumeModelCopyWithImpl<_$_ResumeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResumeModelToJson(
      this,
    );
  }
}

abstract class _ResumeModel implements ResumeModel {
  const factory _ResumeModel(
      {final String? userId,
      final PersonalInfo? personalInfo,
      final List<Education>? education,
      final List<Skill>? skills}) = _$_ResumeModel;

  factory _ResumeModel.fromJson(Map<String, dynamic> json) =
      _$_ResumeModel.fromJson;

  @override
  String? get userId;
  @override
  PersonalInfo? get personalInfo;
  @override
  List<Education>? get education;
  @override
  List<Skill>? get skills;
  @override
  @JsonKey(ignore: true)
  _$$_ResumeModelCopyWith<_$_ResumeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
