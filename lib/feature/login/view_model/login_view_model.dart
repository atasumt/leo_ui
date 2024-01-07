import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginPageViewModelProvider = Provider.autoDispose((ref) => LoginPageViewModel(ref));

class LoginPageViewModel {
  final Ref _ref;
  LoginPageViewModel(this._ref);

  final GlobalKey<FormBuilderState> loginFormKey = GlobalKey<FormBuilderState>();
}
