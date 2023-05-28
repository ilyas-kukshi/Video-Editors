import 'package:freezed_annotation/freezed_annotation.dart';

part 'skills_model.freezed.dart';
part 'skills_model.g.dart';



@freezed
class Skill with _$Skill {
  const factory Skill({
    String? name,
    String? expertiseLevel,
    String? id,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
