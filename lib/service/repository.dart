import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:surf_practice_magic_ball/service/service.dart';

import 'model/prediction_model.dart';

class PredictionRepository {
  final PredictionService _predApi;

  PredictionRepository(this._predApi);

  Future<PredictionModel> fetchPred() async {
    try {
      final res = await _predApi.fetchPrediction();
      final predModel = PredictionModel.fromJson(res);
      return predModel;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}