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
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_ResumeModelToJson(_$_ResumeModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'personalInfo': instance.personalInfo,
      'education': instance.education,
      'skills': instance.skills,
      'id': instance.id,
      'v': instance.v,
    };
