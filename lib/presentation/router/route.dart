import 'package:close_checker/presentation/common/base_scaffold.dart';
import 'package:close_checker/presentation/pages/deleted_major_list/deleted_major_list_page.dart';
import 'package:close_checker/presentation/pages/deleted_minor_list/deleted_minor_list_page.dart';
import 'package:close_checker/presentation/pages/errors/simple_error_page.dart';
import 'package:close_checker/presentation/pages/legals/app_term_page.dart';
import 'package:close_checker/presentation/pages/legals/inquiry_page.dart';
import 'package:close_checker/presentation/pages/minor_list/minor_list_page.dart';
import 'package:close_checker/presentation/pages/major_list/major_list_page.dart';
import 'package:close_checker/presentation/pages/setting/pin_setting_page.dart';
import 'package:close_checker/presentation/pages/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
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
    ),

    /// 規約系
    GoRoute(
      path: '/app_term',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const AppTermPage(),
      ),
    ),
    GoRoute(
      path: '/inquiry',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoAnimationTransition(
        key: state.pageKey,
        child: const InquiryPage(),
      ),
    ),

    /// PIN設定
    GoRoute(
        path: '/pin',
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
          GoRoute(
            path: 'done',
            pageBuilder: (BuildContext context, GoRouterState state) =>
                NoAnimationTransition(
              key: state.pageKey,
              child: const PinSettingDonePage(),
            ),
          ),
        ]),
  ],
  initialLocation: '/list',
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
