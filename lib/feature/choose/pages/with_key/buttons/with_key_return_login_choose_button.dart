import 'package:flutter/material.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/widget/buttons/global_elevated_button.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';

class WithKeyReturnLoginChooseButton extends StatelessWidget {
  const WithKeyReturnLoginChooseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalElevatedButton(
      width: context.width,
      text: 'Giriş Tercihini Değiştir',
      textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: kPrimaryColor),
      onPressed: () {},
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
