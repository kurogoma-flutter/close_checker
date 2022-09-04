import 'package:hooks_riverpod/hooks_riverpod.dart';

final minorListHistoryService =
    Provider.autoDispose((ref) => MinorListHistoryService());

class MinorListHistoryService {
  MinorListHistoryService();
}
