import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:myproject_2_flutter/model/admin_model/society/room_model.dart';
part 'society.freezed.dart';
part 'society.g.dart';

@freezed
class AdminSocietyModel with _$AdminSocietyModel {
  factory AdminSocietyModel(
      {required String societyName,
      String? complexName,
      required List<String> block,
      List<RoomModel>? rooms}) = _AdminSocietyModel;

  factory AdminSocietyModel.fromJson(Map<String, Object?> json) =>
      _$AdminSocietyModelFromJson(json);
}
