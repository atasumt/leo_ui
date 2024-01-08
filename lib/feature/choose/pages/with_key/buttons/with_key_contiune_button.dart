import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/utils/route_name_consts.dart';
import 'package:lio_ui_example/core/widget/buttons/global_elevated_button.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/choose/view_model/choose_main_view_model.dart';

class WithKeyContiuneButton extends HookConsumerWidget {
  const WithKeyContiuneButton({super.key, this.buttonEnable = false});

  final bool buttonEnable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final withKeyFormKey = ref.watch(chooseMainPageViewModelProvider).withKeyFormKey;

    return GlobalElevatedButton(
      width: context.width,
      text: 'Devam',
      onPressed: () {
        if (withKeyFormKey.currentState!.validate()) {
          context.push(RouteNameConstants.login);
        }
      },
      style: !buttonEnable
          ? ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kDisabledColor.withOpacity(0.1)),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
              )),
            )
          : null,
    );
  }
}
