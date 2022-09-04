import 'package:close_checker/presentation/common/base_scaffold.dart';
import 'package:close_checker/presentation/pages/major_list_history/major_list_history_page.dart';
import 'package:close_checker/presentation/pages/minor_list_history/minor_list_history_page.dart';
import 'package:close_checker/presentation/pages/errors/simple_error_page.dart';
import 'package:close_checker/presentation/pages/legals/app_term_page.dart';
import 'package:close_checker/presentation/pages/legals/inquiry_page.dart';
import 'package:close_checker/presentation/pages/minor_list/minor_list_page.dart';
import 'package:close_checker/presentation/pages/major_list/major_list_page.dart';
import 'package:close_checker/presentation/pages/setting/about_this_app/about_this_app_page.dart';
import 'package:close_checker/presentation/pages/setting/pin/pin_setting_confirm_page.dart';
import 'package:close_checker/presentation/pages/setting/pin/pin_setting_page.dart';
import 'package:close_checker/presentation/pages/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/list',
  routes: <GoRoute>[
    GoRoute(
      path: '/deleted',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const DeletedMajorListPage(),
      ),
      routes: [
        GoRoute(
          path: 'minor/:id',
          builder: (BuildContext context, GoRouterState state) {
            final String id = state.params['id']!;
            return DeletedMinorListPage(id: id);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/list',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const MajorListPage(),
      ),
      routes: [
        GoRoute(
          path: 'minor/:id',
          builder: (BuildContext context, GoRouterState state) {
            final String id = state.params['id']!;
            return MinorListPage(id: id);
          },
        ),
      ],
    ),
    GoRoute(
      path: '/setting',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const SettingPage(),
      ),
      routes: [
        /// このアプリについて
        GoRoute(
          path: 'about_this_app',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              NoAnimationTransition(
            key: state.pageKey,
            child: const AboutThisAppPage(),
          ),
        ),

        /// フォントサイズ設定
        /// アプリテーマ

        /// 規約画面
        GoRoute(
          path: 'app_term',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              NoAnimationTransition(
            key: state.pageKey,
            child: const AppTermPage(),
          ),
        ),

        /// 問合せ画面
        GoRoute(
          path: 'inquiry',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              NoAnimationTransition(
            key: state.pageKey,
            child: const InquiryPage(),
          ),
        ),

        /// PIN設定
        GoRoute(
          path: 'pin',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              NoAnimationTransition(
            key: state.pageKey,
            child: const PinSettingPage(),
          ),
          routes: [
            GoRoute(
              path: 'confirm',
              pageBuilder: (BuildContext context, GoRouterState state) =>
                  NoAnimationTransition(
                key: state.pageKey,
                child: const PinConfirmPage(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const SimpleErrorPage(),
  navigatorBuilder: (context, state, child) {
    return Navigator(
      onPopPage: (route, dynamic __) => false,
      pages: [
        MaterialPage<Widget>(
          child: BaseScaffold(
            child: child,
          ),
        ),
      ],
    );
  },
);

/// 画面遷移アニメーションの排除
class NoAnimationTransition extends CustomTransitionPage {
  const NoAnimationTransition({
    required Widget child,
    String? name,
    Object? arguments,
    String? restorationId,
    LocalKey? key,
  }) : super(
          transitionsBuilder: _transitionsBuilder,
          transitionDuration: const Duration(milliseconds: 0),
          key: key,
          name: name,
          arguments: arguments,
          restorationId: restorationId,
          child: child,
        );

  static Widget _transitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
