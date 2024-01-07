import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/core/widget/fields/global_form_text_field.dart';

class WithKeyTextFormField extends StatelessWidget {
  const WithKeyTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GlobalFormTextField(
                name: 'protokol',
                labelText: 'Protokol',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
            const SizedBox(width: kFieldDefaultPadding),
            Expanded(
              child: GlobalFormTextField(
                name: 'port',
                labelText: 'Port',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
          ],
        ),
        GlobalFormTextField(
          name: 'address',
          labelText: 'Adres',
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
      ],
    );
  }
}
