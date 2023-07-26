import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_practice_magic_ball/service/model/prediction_model.dart';

part 'prediction_state.freezed.dart';


@freezed
class PredState with _$PredState {
  factory PredState({
    @Default(PredictionModel()) PredictionModel pred,
    @Default(false) bool isLoading,
  }) = _PredState;
}