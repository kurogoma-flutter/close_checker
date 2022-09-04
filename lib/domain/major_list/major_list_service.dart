import 'package:hooks_riverpod/hooks_riverpod.dart';

final majorListService = Provider.autoDispose((ref) => MajorListService());

class MajorListService {
  MajorListService();
}
