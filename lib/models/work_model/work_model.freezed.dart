// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkModel _$WorkModelFromJson(Map<String, dynamic> json) {
  return _WorkModel.fromJson(json);
}

/// @nodoc
mixin _$WorkModel {
  String? get userId => throw _privateConstructorUsedError;
  String? get videoLink => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get clientName => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkModelCopyWith<WorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkModelCopyWith<$Res> {
  factory $WorkModelCopyWith(WorkModel value, $Res Function(WorkModel) then) =
      _$WorkModelCopyWithImpl<$Res, WorkModel>;
  @useResult
  $Res call(
      {String? userId,
      String? videoLink,
      String? title,
      String? description,
      String? clientName,
      String? category,
      String? id,
      int? v});
}

/// @nodoc
class _$WorkModelCopyWithImpl<$Res, $Val extends WorkModel>
    implements $WorkModelCopyWith<$Res> {
  _$WorkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? videoLink = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? clientName = freezed,
    Object? category = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkModelCopyWith<$Res> implements $WorkModelCopyWith<$Res> {
  factory _$$_WorkModelCopyWith(
          _$_WorkModel value, $Res Function(_$_WorkModel) then) =
      __$$_WorkModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? videoLink,
      String? title,
      String? description,
      String? clientName,
      String? category,
      String? id,
      int? v});
}

/// @nodoc
class __$$_WorkModelCopyWithImpl<$Res>
    extends _$WorkModelCopyWithImpl<$Res, _$_WorkModel>
    implements _$$_WorkModelCopyWith<$Res> {
  __$$_WorkModelCopyWithImpl(
      _$_WorkModel _value, $Res Function(_$_WorkModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? videoLink = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? clientName = freezed,
    Object? category = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_WorkModel(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkModel implements _WorkModel {
  const _$_WorkModel(
      {this.userId,
      this.videoLink,
      this.title,
      this.description,
      this.clientName,
      this.category,
      this.id,
      this.v});

  factory _$_WorkModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkModelFromJson(json);

  @override
  final String? userId;
  @override
  final String? videoLink;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? clientName;
  @override
  final String? category;
  @override
  final String? id;
  @override
  final int? v;

  @override
  String toString() {
    return 'WorkModel(userId: $userId, videoLink: $videoLink, title: $title, description: $description, clientName: $clientName, category: $category, id: $id, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, videoLink, title,
      description, clientName, category, id, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkModelCopyWith<_$_WorkModel> get copyWith =>
      __$$_WorkModelCopyWithImpl<_$_WorkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkModelToJson(
      this,
    );
  }
}

abstract class _WorkModel implements WorkModel {
  const factory _WorkModel(
      {final String? userId,
      final String? videoLink,
      final String? title,
      final String? description,
      final String? clientName,
      final String? category,
      final String? id,
      final int? v}) = _$_WorkModel;

  factory _WorkModel.fromJson(Map<String, dynamic> json) =
      _$_WorkModel.fromJson;

  @override
  String? get userId;
  @override
  String? get videoLink;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get clientName;
  @override
  String? get category;
  @override
  String? get id;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$_WorkModelCopyWith<_$_WorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}
