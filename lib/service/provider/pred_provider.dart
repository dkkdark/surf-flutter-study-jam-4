import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:surf_practice_magic_ball/service/repository.dart';
import 'package:surf_practice_magic_ball/service/service.dart';
import 'package:surf_practice_magic_ball/service/state/prediction_state.dart';

final predApiProvider = Provider<PredictionService>((ref) {
  return PredictionService();
});

final predRepositoryProvider = Provider<PredictionRepository>((ref) {
  return PredictionRepository(ref.read(predApiProvider));
});

final predDataProvider =
StateNotifierProvider.autoDispose<PredDataNotifier, PredState>((ref) {
  return PredDataNotifier(ref.read(predRepositoryProvider));
});

class PredDataNotifier extends StateNotifier<PredState> {
  PredDataNotifier(this.predRepository) : super(PredState());
  PredictionRepository predRepository;

  Future<void> getPred() async {
    state = state.copyWith(isLoading: true);
    await predRepository.fetchPred().then((data) {
      state = state.copyWith(pred: data, isLoading: false);
    });
  }
}
