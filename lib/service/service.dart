import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class PredictionService {
  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://eightballapi.com/api',
      responseType: ResponseType.json,
    ),
  );

  Future<dynamic> fetchPrediction() async {
    try {
      final predData = await _dio.get('/');
      debugPrint("predData ${predData.data}");
      return predData.data;
    } catch (e) {
      debugPrint("predData err ${e}");
      rethrow;
    }
  }
}
