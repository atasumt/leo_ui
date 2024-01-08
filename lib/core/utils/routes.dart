import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lio_ui_example/core/utils/route_name_consts.dart';
import 'package:lio_ui_example/feature/choose/pages/choose_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/with_key_page.dart';
import 'package:lio_ui_example/feature/home/home_page.dart';
import 'package:lio_ui_example/feature/login/login_page.dart';

BuildContext get globalCtx => routerSettings.routerDelegate.navigatorKey.currentContext!;

final GoRouter routerSettings = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChoosePage();
      },
    ),
    GoRoute(
      path: RouteNameConstants.withKeyPage,
      builder: (BuildContext context, GoRouterState state) {
        return const WithKeyPage();
      },
      pageBuilder: (context, state) => RouterTransitionFactory.getTransitionPage(
        context: context,
        state: state,
        child: const WithKeyPage(),
        type: 'scale',
      ),
    ),
    GoRoute(
      path: RouteNameConstants.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: RouteNameConstants.homePage,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
  ],
);

class RouterTransitionFactory {
  static CustomTransitionPage getTransitionPage({required BuildContext context, required GoRouterState state, required Widget child, required String type}) {
    return CustomTransitionPage(
        key: state.pageKey,
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          switch (type) {
            case 'fade':
              return FadeTransition(opacity: animation, child: child);
            case 'rotation':
              return RotationTransition(turns: animation, child: child);
            case 'size':
              return SizeTransition(sizeFactor: animation, child: child);
            case 'scale':
              return ScaleTransition(scale: animation, child: child);
            default:
              return FadeTransition(opacity: animation, child: child);
          }
        });
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
  );
}
