import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/core/widget/global_user_entry_app_bar.dart';
import 'package:lio_ui_example/feature/login/buttons/login_page_sign_button.dart';
import 'package:lio_ui_example/feature/login/fields/login_page_check_box_field.dart';
import 'package:lio_ui_example/feature/login/fields/login_page_text_form_field.dart';
import 'package:lio_ui_example/feature/login/view_model/login_view_model.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormKey = ref.watch(loginPageViewModelProvider).loginFormKey;

    final buttonEnable = useState(false);

    return Scaffold(
      appBar: globalUserEntryAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(
          left: kDefaultMostLargePadding,
          right: kDefaultMostLargePadding,
          top: kDefaultMostLargePadding,
        ),
        child: SingleChildScrollView(
          child: FormBuilder(
            key: loginFormKey,
            onChanged: () {
              buttonEnable.value = loginFormKey.currentState!.isValid;
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kullanıcı Girişi',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const LoginPageTextFormField(),
                const SizedBox(height: 50),
                LoginPAgeSignButton(buttonEnable: buttonEnable.value),
                const SizedBox(height: kDefaultMiddlePadding),
                const LoginPageCheckBoxField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
