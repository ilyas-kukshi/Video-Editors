// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResumeModel _$$_ResumeModelFromJson(Map<String, dynamic> json) =>
    _$_ResumeModel(
      userId: json['userId'] as String?,
      personalInfo: json['personalInfo'] == null
          ? null
          : PersonalInfo.fromJson(json['personalInfo'] as Map<String, dynamic>),
      education: (json['education'] as List<dynamic>?)
          ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResumeModelToJson(_$_ResumeModel instance) =>
    <String, dynamic>{
      'userId': instance.userId!,
      'personalInfo': instance.personalInfo!.toJson(),
      'education': instance.education!.map((e) => e.toJson()).toList(),
      'skills': instance.skills!.map((e) => e.toJson()).toList(),
    };
