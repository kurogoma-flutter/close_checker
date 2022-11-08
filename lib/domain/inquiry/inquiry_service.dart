import 'package:close_checker/infrastructure/model/inquiry/inquiry_model.dart';
import 'package:close_checker/infrastructure/repository/auth_repository.dart';
import 'package:close_checker/infrastructure/repository/inquiry_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final inquiryService = Provider.autoDispose((ref) => InquiryService(
      inquiryRepository: ref.watch(inquiryRepository),
      authRepository: ref.watch(authRepository),
    ));

class InquiryService {
  InquiryService({
    required this.inquiryRepository,
    required this.authRepository,
  });

  final InquiryRepository inquiryRepository;
  final AuthRepository authRepository;

  /// 問い合わせを送信する
  Future<void> sendInquiry(InquiryModel inquiry) async {
    // ユーザー情報を取得する
    final user = await authRepository.fetchCurrentUser();
    // モデルにセット
    inquiry = inquiry.copyWith(
      createdUserId: user!.uid,
      email: user.email!,
    );
    // Firestoreに送信する
    await inquiryRepository.sendInquiry(inquiry);
  }
}
