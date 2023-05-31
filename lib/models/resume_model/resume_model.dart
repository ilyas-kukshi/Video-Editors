import 'package:video_editors/models/education_model/education_model.dart';
import 'package:video_editors/models/personal_info_model/personal_info_model.dart';
import 'package:video_editors/models/skills_model/skills_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'resume_model.freezed.dart';
part 'resume_model.g.dart';

String resumeModelToJson(ResumeModel data) => json.encode(data.toJson());

@freezed
class ResumeModel with _$ResumeModel {
  const factory ResumeModel({
    String? userId,
    PersonalInfo? personalInfo,
    List<Education>? education,
    List<Skill>? skills,
  }) = _ResumeModel;

  factory ResumeModel.fromJson(Map<String, dynamic> json) =>
      _$ResumeModelFromJson(json);
}
