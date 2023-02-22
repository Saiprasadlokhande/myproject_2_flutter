// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyDeviceModel _$MyDeviceModelFromJson(Map<String, dynamic> json) {
  return _MyDeviceModel.fromJson(json);
}

/// @nodoc
mixin _$MyDeviceModel {
  bool get isWifiOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyDeviceModelCopyWith<MyDeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyDeviceModelCopyWith<$Res> {
  factory $MyDeviceModelCopyWith(
          MyDeviceModel value, $Res Function(MyDeviceModel) then) =
      _$MyDeviceModelCopyWithImpl<$Res, MyDeviceModel>;
  @useResult
  $Res call({bool isWifiOn});
}

/// @nodoc
class _$MyDeviceModelCopyWithImpl<$Res, $Val extends MyDeviceModel>
    implements $MyDeviceModelCopyWith<$Res> {
  _$MyDeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWifiOn = null,
  }) {
    return _then(_value.copyWith(
      isWifiOn: null == isWifiOn
          ? _value.isWifiOn
          : isWifiOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyDeviceModelCopyWith<$Res>
    implements $MyDeviceModelCopyWith<$Res> {
  factory _$$_MyDeviceModelCopyWith(
          _$_MyDeviceModel value, $Res Function(_$_MyDeviceModel) then) =
      __$$_MyDeviceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isWifiOn});
}

/// @nodoc
class __$$_MyDeviceModelCopyWithImpl<$Res>
    extends _$MyDeviceModelCopyWithImpl<$Res, _$_MyDeviceModel>
    implements _$$_MyDeviceModelCopyWith<$Res> {
  __$$_MyDeviceModelCopyWithImpl(
      _$_MyDeviceModel _value, $Res Function(_$_MyDeviceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWifiOn = null,
  }) {
    return _then(_$_MyDeviceModel(
      isWifiOn: null == isWifiOn
          ? _value.isWifiOn
          : isWifiOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyDeviceModel implements _MyDeviceModel {
  _$_MyDeviceModel({required this.isWifiOn});

  factory _$_MyDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyDeviceModelFromJson(json);

  @override
  final bool isWifiOn;

  @override
  String toString() {
    return 'MyDeviceModel(isWifiOn: $isWifiOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyDeviceModel &&
            (identical(other.isWifiOn, isWifiOn) ||
                other.isWifiOn == isWifiOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isWifiOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyDeviceModelCopyWith<_$_MyDeviceModel> get copyWith =>
      __$$_MyDeviceModelCopyWithImpl<_$_MyDeviceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyDeviceModelToJson(
      this,
    );
  }
}

abstract class _MyDeviceModel implements MyDeviceModel {
  factory _MyDeviceModel({required final bool isWifiOn}) = _$_MyDeviceModel;

  factory _MyDeviceModel.fromJson(Map<String, dynamic> json) =
      _$_MyDeviceModel.fromJson;

  @override
  bool get isWifiOn;
  @override
  @JsonKey(ignore: true)
  _$$_MyDeviceModelCopyWith<_$_MyDeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
