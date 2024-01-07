import 'package:flutter/material.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/widget/buttons/global_elevated_button.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';

class LoginPAgeSignButton extends StatelessWidget {
  const LoginPAgeSignButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalElevatedButton(
      text: 'Giriş Yap',
      width: context.width,
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kDisabledColor.withOpacity(0.1)),
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
        )),
      ),
    );
  }
}
