// To parse this JSON data, do
//
//     final workModel = workModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'work_model.freezed.dart';
part 'work_model.g.dart';

WorkModel workModelFromJson(String str) => WorkModel.fromJson(json.decode(str));

String workModelToJson(WorkModel data) => json.encode(data.toJson());

@freezed
class WorkModel with _$WorkModel {
  const factory WorkModel({
    String? userId,
    String? videoLink,
    String? title,
    String? description,
    String? clientName,
    String? category,
    String? id,
    int? v,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
}
