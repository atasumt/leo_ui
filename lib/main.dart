import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/interceptor/provider_interceptor.dart';
import 'package:lio_ui_example/core/theme/light_theme.dart';
import 'package:lio_ui_example/core/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    ProviderScope(
      observers: [ProviderInterceptor()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'UyumSoft',
      debugShowCheckedModeBanner: false,
      routeInformationParser: routerSettings.routeInformationParser,
      routeInformationProvider: routerSettings.routeInformationProvider,
      routerDelegate: routerSettings.routerDelegate,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Theme(
              data: lightTheme(
                context,
              ),
              child: Overlay(initialEntries: [
                OverlayEntry(
                    builder: (context) => GestureDetector(
                        onTap: () {
                          WidgetsBinding.instance.focusManager.primaryFocus
                              ?.unfocus();
                        },
                        child: child!))
              ])),
        );
      },
    );
  }
}
