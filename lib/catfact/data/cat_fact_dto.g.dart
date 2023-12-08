// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatFactDto _$CatFactDtoFromJson(Map<String, dynamic> json) => CatFactDto(
      (json['data'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CatFactDtoToJson(CatFactDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
