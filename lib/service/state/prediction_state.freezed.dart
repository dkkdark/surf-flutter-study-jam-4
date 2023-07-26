// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PredState {
  PredictionModel get pred => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PredStateCopyWith<PredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredStateCopyWith<$Res> {
  factory $PredStateCopyWith(PredState value, $Res Function(PredState) then) =
      _$PredStateCopyWithImpl<$Res, PredState>;
  @useResult
  $Res call({PredictionModel pred, bool isLoading});

  $PredictionModelCopyWith<$Res> get pred;
}

/// @nodoc
class _$PredStateCopyWithImpl<$Res, $Val extends PredState>
    implements $PredStateCopyWith<$Res> {
  _$PredStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pred = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      pred: null == pred
          ? _value.pred
          : pred // ignore: cast_nullable_to_non_nullable
              as PredictionModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PredictionModelCopyWith<$Res> get pred {
    return $PredictionModelCopyWith<$Res>(_value.pred, (value) {
      return _then(_value.copyWith(pred: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PredStateCopyWith<$Res> implements $PredStateCopyWith<$Res> {
  factory _$$_PredStateCopyWith(
          _$_PredState value, $Res Function(_$_PredState) then) =
      __$$_PredStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PredictionModel pred, bool isLoading});

  @override
  $PredictionModelCopyWith<$Res> get pred;
}

/// @nodoc
class __$$_PredStateCopyWithImpl<$Res>
    extends _$PredStateCopyWithImpl<$Res, _$_PredState>
    implements _$$_PredStateCopyWith<$Res> {
  __$$_PredStateCopyWithImpl(
      _$_PredState _value, $Res Function(_$_PredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pred = null,
    Object? isLoading = null,
  }) {
    return _then(_$_PredState(
      pred: null == pred
          ? _value.pred
          : pred // ignore: cast_nullable_to_non_nullable
              as PredictionModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PredState implements _PredState {
  _$_PredState({this.pred = const PredictionModel(), this.isLoading = false});

  @override
  @JsonKey()
  final PredictionModel pred;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PredState(pred: $pred, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredState &&
            (identical(other.pred, pred) || other.pred == pred) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pred, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredStateCopyWith<_$_PredState> get copyWith =>
      __$$_PredStateCopyWithImpl<_$_PredState>(this, _$identity);
}

abstract class _PredState implements PredState {
  factory _PredState({final PredictionModel pred, final bool isLoading}) =
      _$_PredState;

  @override
  PredictionModel get pred;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_PredStateCopyWith<_$_PredState> get copyWith =>
      throw _privateConstructorUsedError;
}
