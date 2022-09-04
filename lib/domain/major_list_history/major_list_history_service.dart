import 'package:hooks_riverpod/hooks_riverpod.dart';

final majorListHistoryService =
    Provider.autoDispose((ref) => MajorListHistoryService());

class MajorListHistoryService {
  MajorListHistoryService();
}
