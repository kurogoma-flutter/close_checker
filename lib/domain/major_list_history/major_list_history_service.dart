import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:close_checker/infrastructure/repository/major_list_history_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final majorListHistoryService =
    Provider.autoDispose((ref) => MajorListHistoryService(
          majorListHistoryRepository: ref.read(majorListHistoryRepository),
        ));

class MajorListHistoryService {
  MajorListHistoryService({
    required this.majorListHistoryRepository,
  });

  final MajorListHistoryRepository majorListHistoryRepository;

  /// [userId]で指定したユーザーの持つMajorListHistoryを取得する
  Future<List<MajorListModel>> fetchMajorListHistoryModels(
    String userId,
  ) async {
    return await majorListHistoryRepository.fetchMajorListModels(userId);
  }

  /// MajorListHistoryを復元する
  Future<void> setMajorListModel(MajorListModel majorListModel) async {
    await majorListHistoryRepository.setMajorListModel(majorListModel);
  }

  /// MajorListHistoryを削除する
  Future<void> deleteMajorListModel(MajorListModel majorListModel) async {
    await majorListHistoryRepository.deleteMajorListModel(majorListModel);
  }
}
