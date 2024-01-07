import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lio_ui_example/core/utils/route_name_consts.dart';
import 'package:lio_ui_example/feature/choose_main_page.dart';
import 'package:lio_ui_example/feature/login/login_page.dart';

BuildContext get globalCtx => routerSettings.routerDelegate.navigatorKey.currentContext!;

final GoRouter routerSettings = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ChooseMainPage();
      },
    ),
    GoRoute(
      path: RouteNameConstants.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
  ],
);
