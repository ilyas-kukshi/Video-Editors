// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkModel _$$_WorkModelFromJson(Map<String, dynamic> json) => _$_WorkModel(
      userId: json['userId'] as String?,
      videoLink: json['videoLink'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      clientName: json['clientName'] as String?,
      category: json['category'] as String?,
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_WorkModelToJson(_$_WorkModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'videoLink': instance.videoLink,
      'title': instance.title,
      'description': instance.description,
      'clientName': instance.clientName,
      'category': instance.category,
      'id': instance.id,
      'v': instance.v,
    };
