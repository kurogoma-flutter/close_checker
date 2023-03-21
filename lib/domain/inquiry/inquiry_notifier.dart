import 'package:close_checker/domain/inquiry/inquiry_service.dart';
import 'package:close_checker/domain/inquiry/inquiry_state.dart';
import 'package:close_checker/infrastructure/model/inquiry/inquiry_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utility/logger.dart';

final inquiryNotifierProvider =
    StateNotifierProvider.autoDispose<InquiryNotifier, InquiryState>(
  (ref) => InquiryNotifier(
    inquiryService: ref.read(inquiryService),
  ),
);

class InquiryNotifier extends StateNotifier<InquiryState> {
  InquiryNotifier({
    required this.inquiryService,
  }) : super(const InquiryState());

  final InquiryService inquiryService;

  /// タイトルを変更する
  void changeTitle(String title) {
    state = state.copyWith(title: title);
  }

  /// お問い合わせ内容を変更する
  void changeContent(String content) {
    state = state.copyWith(content: content);
  }

  /// お問い合わせを送信する
  Future<void> sendInquiry() async {
    InquiryModel inquiry = InquiryModel.initialData();

    if (state.title == '選択してください') {
      logger.i('選択してください');
      return;
    }

    if (state.content.isEmpty) {
      logger.i('内容を入力してください');
      return;
    }

    inquiry = inquiry.copyWith(
      title: state.title,
      content: state.content,
    );

    await inquiryService.sendInquiry(inquiry);
  }
}
