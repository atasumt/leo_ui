import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/notifiers/choose_navigation_notifier.dart';
import 'package:lio_ui_example/core/widget/global_user_entry_app_bar.dart';
import 'package:lio_ui_example/feature/choose/pages/choose_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/with_key_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_link_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_qr_page.dart';

class ChooseMainPage extends HookConsumerWidget {
  const ChooseMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chooseIndexPage = ref.watch(chooseNavigationNotifierProvider);

    late Widget body;
    switch (chooseIndexPage) {
      case 0:
        body = ChoosePage();
        break;
      case 1:
        body = const WithKeyPage();
        break;
      case 2:
        body = const WithLinkPage();
        break;
      case 3:
        body = const WithQrPage();
        break;

      default:
        Container();
    }

    return Scaffold(
      appBar: globalUserEntryAppBar(context),
      body: body,
    );
  }
}
