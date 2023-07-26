// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredictionModel _$PredictionModelFromJson(Map<String, dynamic> json) {
  return _PredictionModel.fromJson(json);
}

/// @nodoc
mixin _$PredictionModel {
  String? get reading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionModelCopyWith<PredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionModelCopyWith<$Res> {
  factory $PredictionModelCopyWith(
          PredictionModel value, $Res Function(PredictionModel) then) =
      _$PredictionModelCopyWithImpl<$Res, PredictionModel>;
  @useResult
  $Res call({String? reading});
}

/// @nodoc
class _$PredictionModelCopyWithImpl<$Res, $Val extends PredictionModel>
    implements $PredictionModelCopyWith<$Res> {
  _$PredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reading = freezed,
  }) {
    return _then(_value.copyWith(
      reading: freezed == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PredictionModelCopyWith<$Res>
    implements $PredictionModelCopyWith<$Res> {
  factory _$$_PredictionModelCopyWith(
          _$_PredictionModel value, $Res Function(_$_PredictionModel) then) =
      __$$_PredictionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reading});
}

/// @nodoc
class __$$_PredictionModelCopyWithImpl<$Res>
    extends _$PredictionModelCopyWithImpl<$Res, _$_PredictionModel>
    implements _$$_PredictionModelCopyWith<$Res> {
  __$$_PredictionModelCopyWithImpl(
      _$_PredictionModel _value, $Res Function(_$_PredictionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reading = freezed,
  }) {
    return _then(_$_PredictionModel(
      reading: freezed == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PredictionModel implements _PredictionModel {
  const _$_PredictionModel({this.reading});

  factory _$_PredictionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionModelFromJson(json);

  @override
  final String? reading;

  @override
  String toString() {
    return 'PredictionModel(reading: $reading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictionModel &&
            (identical(other.reading, reading) || other.reading == reading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredictionModelCopyWith<_$_PredictionModel> get copyWith =>
      __$$_PredictionModelCopyWithImpl<_$_PredictionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionModelToJson(
      this,
    );
  }
}

abstract class _PredictionModel implements PredictionModel {
  const factory _PredictionModel({final String? reading}) = _$_PredictionModel;

  factory _PredictionModel.fromJson(Map<String, dynamic> json) =
      _$_PredictionModel.fromJson;

  @override
  String? get reading;
  @override
  @JsonKey(ignore: true)
  _$$_PredictionModelCopyWith<_$_PredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
