// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'society.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminSocietyModel _$$_AdminSocietyModelFromJson(Map<String, dynamic> json) =>
    _$_AdminSocietyModel(
      societyName: json['societyName'] as String,
      complexName: json['complexName'] as String?,
      block: (json['block'] as List<dynamic>).map((e) => e as String).toList(),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdminSocietyModelToJson(
        _$_AdminSocietyModel instance) =>
    <String, dynamic>{
      'societyName': instance.societyName,
      'complexName': instance.complexName,
      'block': instance.block,
      'rooms': instance.rooms,
    };
