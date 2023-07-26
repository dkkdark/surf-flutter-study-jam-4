import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_model.freezed.dart';
part 'prediction_model.g.dart';

@freezed
class PredictionModel with _$PredictionModel {
  const factory PredictionModel({
    String? reading,
  }) = _PredictionModel;
  factory PredictionModel.fromJson(dynamic json) =>
      _$PredictionModelFromJson(json);
}


