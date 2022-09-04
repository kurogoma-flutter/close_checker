import 'package:hooks_riverpod/hooks_riverpod.dart';

final minorListService = Provider.autoDispose((ref) => MinorListService());

class MinorListService {
  MinorListService();
}
