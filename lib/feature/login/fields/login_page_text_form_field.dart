import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/core/widget/fields/global_form_text_field.dart';

class LoginPageTextFormField extends StatelessWidget {
  const LoginPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GlobalFormTextField(
          fillColor: kCardColor,
          name: 'userName',
          labelText: 'Kullanıcı Adı',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
        GlobalFormTextField(
          fillColor: kCardColor,
          name: 'password',
          labelText: 'Şifre',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        )
      ],
    );
  }
}
