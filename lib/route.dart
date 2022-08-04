import 'package:close_checker/check_list_page.dart';
import 'package:close_checker/top_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const TopPage(),
    ),
    GoRoute(
      path: '/check_list',
      builder: (BuildContext context, GoRouterState state) =>
          const CheckListPage(),
    ),
  ],
  initialLocation: '/',
  // errorBuilder: (context, state) => const SimpleErrorPage(),
);
