import 'package:json_annotation/json_annotation.dart';

part 'CatFactDto.g.dart';

@JsonSerializable()
class CatFactDto {

  @JsonKey(name: 'data')
  final List<String> data;

  CatFactDto(this.data);

  factory CatFactDto.fromJson(Map<String, dynamic> json) => _$CatFactDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CatFactDtoToJson(this);
}
