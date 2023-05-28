
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_model.freezed.dart';
part 'education_model.g.dart';



@freezed
class Education with _$Education {
  const factory Education({
    String? collegeName,
    DateTime? startDate,
    DateTime? endDate,
    String? degree,
    String? id,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}
