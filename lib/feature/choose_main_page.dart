import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/common/global_app_bar.dart';
import 'package:lio_ui_example/core/helper/logger.dart';
import 'package:lio_ui_example/core/notifiers/choose_navigation_notifier.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/choose/pages/choose_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_link_page.dart';
import 'package:lio_ui_example/feature/choose/pages/with_qr_page.dart';
import 'package:lio_ui_example/gen/assets.gen.dart';

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

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        ref.read(chooseNavigationNotifierProvider.notifier).changeCurrentIndex(0);
      },
      child: Scaffold(
        appBar: globalAppBar(
            toolbarHeight: 200,
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.only(left: kDefaultNormalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LioXHR',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(color: kCardColor),
                  ),
                  Text(
                    'Hoş geldiniz',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(color: kCardColor),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: kDefaultAppBarPadding),
                child: Row(
                  children: [
                    Assets.icons.turkiyeFlag.image(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: kCardColor),
                        shape: BoxShape.circle,
                      ),
                      child: const FaIcon(
                        FontAwesomeIcons.ellipsis,
                        color: kCardColor,
                        size: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
        body: body,
      ),
    );
  }
}
