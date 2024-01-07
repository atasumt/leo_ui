import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lio_ui_example/core/common/global_app_bar.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/gen/assets.gen.dart';

AppBar globalUserEntryAppBar(BuildContext context) {
  return globalAppBar(
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
      ]);
}
