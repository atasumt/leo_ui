import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/buttons/with_key_contiune_button.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/buttons/with_key_return_login_choose_button.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/fields/with_key_text_form_field.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/widgets/with_key_text_widget.dart';
import 'package:lio_ui_example/feature/choose/view_model/choose_main_view_model.dart';

class WithKeyPage extends ConsumerWidget {
  const WithKeyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final withKeyFormKey = ref.watch(chooseMainPageViewModelProvider).withKeyFormKey;
    return Padding(
      padding: const EdgeInsets.only(
        left: kFieldDefaultPadding,
        right: kFieldDefaultPadding,
        top: kDefaultBiggerPadding,
      ),
      child: SingleChildScrollView(
        child: FormBuilder(
          key: withKeyFormKey,
          child: const Column(
            children: [
              WithKeyTextWidget(),
              WithKeyTextFormField(),
              SizedBox(height: 24),
              WithKeyContiuneButton(),
              WithKeyReturnLoginChooseButton(),
            ],
          ),
        ),
      ),
    );
  }
}
