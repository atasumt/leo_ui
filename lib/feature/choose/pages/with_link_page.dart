import 'package:flutter/material.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';
import 'package:lio_ui_example/feature/choose/pages/with_key/buttons/with_key_return_login_choose_button.dart';

class WithLinkPage extends StatelessWidget {
  const WithLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: kFieldDefaultPadding,
          right: kFieldDefaultPadding,
          top: kDefaultBiggerPadding,
        ),
        child: WithKeyReturnLoginChooseButton(),
      ),
    );
  }
}
