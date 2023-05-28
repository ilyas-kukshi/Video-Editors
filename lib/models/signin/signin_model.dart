// To parse this JSON data, do
//
//     final signinModel = signinModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'signin_model.freezed.dart';
part 'signin_model.g.dart';

SigninModel signinModelFromJson(String str) =>
    SigninModel.fromJson(json.decode(str));

String signinModelToJson(SigninModel data) => json.encode(data.toJson());

@freezed
class SigninModel with _$SigninModel {
  const factory SigninModel({
    String? id,
    required String email,
    required String password,
  }) = _SigninModel;

  factory SigninModel.fromJson(Map<String, dynamic> json) =>
      _$SigninModelFromJson(json);
}
