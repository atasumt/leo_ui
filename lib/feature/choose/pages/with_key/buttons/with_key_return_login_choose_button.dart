import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/widget/buttons/global_elevated_button.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';

class WithKeyReturnLoginChooseButton extends ConsumerWidget {
  const WithKeyReturnLoginChooseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlobalElevatedButton(
      width: context.width,
      text: 'Giriş Tercihini Değiştir',
      textStyle: Theme.of(context)
          .textTheme
          .labelLarge!
          .copyWith(color: kPrimaryColor),
      onPressed: () {
        Navigator.pop(context);
        //ref.read(chooseNavigationNotifierProvider.notifier).changeCurrentIndex(0);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kCardColor),
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
            side: BorderSide(
              color: kPrimaryColor,
            ))),
      ),
    );
  }
}
