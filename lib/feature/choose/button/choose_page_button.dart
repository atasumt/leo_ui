import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/utils/route_name_consts.dart';
import 'package:lio_ui_example/core/widget/buttons/global_elevated_button.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/choose/enums/choose_status_enum.dart';

class ChoosePageButton extends ConsumerWidget {
  const ChoosePageButton({super.key, required this.chooseStatusEnum});

  final ChooseStatusEnum? chooseStatusEnum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlobalElevatedButton(
      width: context.width,
      text: 'Devam',
      onPressed: () {
        if (chooseStatusEnum?.chooseIndex != -1) {
          context.push(RouteNameConstants.withKeyPage);
        }
      },
      style: chooseStatusEnum?.chooseIndex == -1
          ? ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(kDisabledColor.withOpacity(0.1)),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
              )),
            )
          : null,
    );
  }
}
