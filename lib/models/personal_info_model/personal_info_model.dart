import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'personal_info_model.freezed.dart';
part 'personal_info_model.g.dart';

@freezed
class PersonalInfo with _$PersonalInfo {
  const factory PersonalInfo({
    String? name,
    String? city,
    String? phoneNumber,
    String? email,
    String? id,
  }) = _PersonalInfo;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);
}
