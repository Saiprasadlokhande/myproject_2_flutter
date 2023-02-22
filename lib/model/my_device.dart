import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_device.freezed.dart';
part 'my_device.g.dart';

@freezed
class MyDeviceModel with _$MyDeviceModel {
  // bool isWifiOn;

  factory MyDeviceModel({required bool isWifiOn}) = _MyDeviceModel;

  factory MyDeviceModel.fromJson(Map<String, Object?> json) =>
      _$MyDeviceModelFromJson(json);
}
