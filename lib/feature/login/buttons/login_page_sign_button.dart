import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/common/global_indicator_widget.dart';
import 'package:lio_ui_example/core/extension/media_quary_extension.dart';
import 'package:lio_ui_example/core/utils/route_name_consts.dart';
import 'package:lio_ui_example/core/widget/buttons/global_elevated_button.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/login/view_model/login_view_model.dart';

class LoginPAgeSignButton extends HookConsumerWidget {
  const LoginPAgeSignButton({super.key, this.buttonEnable = false});
  final bool buttonEnable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormKey = ref.watch(loginPageViewModelProvider).loginFormKey;
    final isPublish = useState(true);

    return isPublish.value == true
        ? GlobalElevatedButton(
            text: 'Giriş Yap',
            width: context.width,
            onPressed: () {
              isPublish.value = false;
              if (loginFormKey.currentState!.validate()) {
                ref
                    .read(loginPageViewModelProvider)
                    .login(
                      email:
                          loginFormKey.currentState!.fields["userName"]?.value,
                      password:
                          loginFormKey.currentState!.fields["password"]?.value,
                    )
                    .then((value) {
                  isPublish.value = true;
                  if (value.localId != null) {
                    context.go(RouteNameConstants.homePage);
                  }
                });
              }
            },
            style: !buttonEnable
                ? ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        kDisabledColor.withOpacity(0.1)),
                    shape:
                        MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(kDefaultRadius)),
                    )),
                  )
                : null,
          )
        : const GlobalIndicatorWidget();
  }
}
