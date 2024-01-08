import 'package:flutter/material.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/core/widget/fields/global_form_checkbox.dart';

class LoginPageCheckBoxField extends StatelessWidget {
  const LoginPageCheckBoxField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Şifremi Unuttum',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: kPrimaryColor, fontWeight: FontWeight.w600),
            ),
            GlobalFormCheckBox(
              customTitle: Text(
                'Beni Hatırla',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
              name: 'rememberMe',
              width: 125,
            ),
          ],
        ),
      ],
    );
  }
}
