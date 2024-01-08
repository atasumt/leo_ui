import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lio_ui_example/core/models/entities/login_request_model/login_request_model.dart';
import 'package:lio_ui_example/core/models/login_response_model/login_response_model.dart';
import 'package:lio_ui_example/core/repositories/login_repositor.dart';

final loginPageViewModelProvider = Provider.autoDispose((ref) => LoginPageViewModel(ref));

class LoginPageViewModel {
  final Ref _ref;
  LoginPageViewModel(this._ref);

  final GlobalKey<FormBuilderState> loginFormKey = GlobalKey<FormBuilderState>();

  Future<LoginResponseModel> login({required String? email, required String? password}) async {
    var loginReq = LoginRequestModel(email: email, password: password);
    var response = await _ref.read(loginRepositoryProvider).signIn(loginRequestModel: loginReq);
    return response;
  }
}
