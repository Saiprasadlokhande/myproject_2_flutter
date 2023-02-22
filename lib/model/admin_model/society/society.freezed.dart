// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'society.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminSocietyModel _$AdminSocietyModelFromJson(Map<String, dynamic> json) {
  return _AdminSocietyModel.fromJson(json);
}

/// @nodoc
mixin _$AdminSocietyModel {
  String get societyName => throw _privateConstructorUsedError;
  String? get complexName => throw _privateConstructorUsedError;
  List<String> get block => throw _privateConstructorUsedError;
  List<RoomModel>? get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminSocietyModelCopyWith<AdminSocietyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminSocietyModelCopyWith<$Res> {
  factory $AdminSocietyModelCopyWith(
          AdminSocietyModel value, $Res Function(AdminSocietyModel) then) =
      _$AdminSocietyModelCopyWithImpl<$Res, AdminSocietyModel>;
  @useResult
  $Res call(
      {String societyName,
      String? complexName,
      List<String> block,
      List<RoomModel>? rooms});
}

/// @nodoc
class _$AdminSocietyModelCopyWithImpl<$Res, $Val extends AdminSocietyModel>
    implements $AdminSocietyModelCopyWith<$Res> {
  _$AdminSocietyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? societyName = null,
    Object? complexName = freezed,
    Object? block = null,
    Object? rooms = freezed,
  }) {
    return _then(_value.copyWith(
      societyName: null == societyName
          ? _value.societyName
          : societyName // ignore: cast_nullable_to_non_nullable
              as String,
      complexName: freezed == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as String?,
      block: null == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminSocietyModelCopyWith<$Res>
    implements $AdminSocietyModelCopyWith<$Res> {
  factory _$$_AdminSocietyModelCopyWith(_$_AdminSocietyModel value,
          $Res Function(_$_AdminSocietyModel) then) =
      __$$_AdminSocietyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String societyName,
      String? complexName,
      List<String> block,
      List<RoomModel>? rooms});
}

/// @nodoc
class __$$_AdminSocietyModelCopyWithImpl<$Res>
    extends _$AdminSocietyModelCopyWithImpl<$Res, _$_AdminSocietyModel>
    implements _$$_AdminSocietyModelCopyWith<$Res> {
  __$$_AdminSocietyModelCopyWithImpl(
      _$_AdminSocietyModel _value, $Res Function(_$_AdminSocietyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? societyName = null,
    Object? complexName = freezed,
    Object? block = null,
    Object? rooms = freezed,
  }) {
    return _then(_$_AdminSocietyModel(
      societyName: null == societyName
          ? _value.societyName
          : societyName // ignore: cast_nullable_to_non_nullable
              as String,
      complexName: freezed == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as String?,
      block: null == block
          ? _value._block
          : block // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminSocietyModel
    with DiagnosticableTreeMixin
    implements _AdminSocietyModel {
  _$_AdminSocietyModel(
      {required this.societyName,
      this.complexName,
      required final List<String> block,
      final List<RoomModel>? rooms})
      : _block = block,
        _rooms = rooms;

  factory _$_AdminSocietyModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminSocietyModelFromJson(json);

  @override
  final String societyName;
  @override
  final String? complexName;
  final List<String> _block;
  @override
  List<String> get block {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_block);
  }

  final List<RoomModel>? _rooms;
  @override
  List<RoomModel>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdminSocietyModel(societyName: $societyName, complexName: $complexName, block: $block, rooms: $rooms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdminSocietyModel'))
      ..add(DiagnosticsProperty('societyName', societyName))
      ..add(DiagnosticsProperty('complexName', complexName))
      ..add(DiagnosticsProperty('block', block))
      ..add(DiagnosticsProperty('rooms', rooms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminSocietyModel &&
            (identical(other.societyName, societyName) ||
                other.societyName == societyName) &&
            (identical(other.complexName, complexName) ||
                other.complexName == complexName) &&
            const DeepCollectionEquality().equals(other._block, _block) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      societyName,
      complexName,
      const DeepCollectionEquality().hash(_block),
      const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminSocietyModelCopyWith<_$_AdminSocietyModel> get copyWith =>
      __$$_AdminSocietyModelCopyWithImpl<_$_AdminSocietyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminSocietyModelToJson(
      this,
    );
  }
}

abstract class _AdminSocietyModel implements AdminSocietyModel {
  factory _AdminSocietyModel(
      {required final String societyName,
      final String? complexName,
      required final List<String> block,
      final List<RoomModel>? rooms}) = _$_AdminSocietyModel;

  factory _AdminSocietyModel.fromJson(Map<String, dynamic> json) =
      _$_AdminSocietyModel.fromJson;

  @override
  String get societyName;
  @override
  String? get complexName;
  @override
  List<String> get block;
  @override
  List<RoomModel>? get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_AdminSocietyModelCopyWith<_$_AdminSocietyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
