import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  factory RoomModel({String? block, required String roomNo}) = _RoomModel;
  factory RoomModel.fromJson(Map<String, Object?> json) =>
      _$RoomModelFromJson(json);
}
