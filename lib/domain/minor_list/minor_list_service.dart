import 'package:close_checker/infrastructure/model/minor_list/minor_list_model.dart';
import 'package:close_checker/infrastructure/repository/minor_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final minorListService = Provider.autoDispose((ref) => MinorListService(
      minorListRepository: ref.read(minorListRepository),
    ));

class MinorListService {
  MinorListService({
    required this.minorListRepository,
  });
  final MinorListRepository minorListRepository;

  /// 小分類のリストを取得する
  Future<List<MinorListModel>> fetchMinorListModels(String majorListId) async {
    return await minorListRepository.fetchMinorListModels(majorListId);
  }

  /// 小分類を追加・更新する
  Future<void> setMinorListModel(
    String majorListId,
    MinorListModel minorListModel,
  ) async {
    await minorListRepository.setMinorListModel(majorListId, minorListModel);
  }

  /// 小分類を削除する
  Future<void> deleteMinorListModel(
    String majorListId,
    MinorListModel minorListModel,
  ) async {
    await minorListRepository.deleteMinorListModel(majorListId, minorListModel);
  }
}
