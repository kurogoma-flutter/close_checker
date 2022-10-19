import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:close_checker/infrastructure/repository/major_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final majorListService = Provider.autoDispose((ref) => MajorListService(
      majorListRepository: ref.read(majorListRepository),
    ));

class MajorListService {
  MajorListService({
    required this.majorListRepository,
  });

  final MajorListRepository majorListRepository;

  /// 大分類のリストを取得する
  Future<List<MajorListModel>> fetchMajorListModels() async {
    return await majorListRepository.fetchMajorListModels();
  }
}
