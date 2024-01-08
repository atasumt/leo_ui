import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chooseMainPageViewModelProvider =
    Provider.autoDispose((ref) => ChooseMainPageViewModel(ref));

class ChooseMainPageViewModel {
  final Ref _ref;
  ChooseMainPageViewModel(this._ref);

  final GlobalKey<FormBuilderState> withKeyFormKey =
      GlobalKey<FormBuilderState>();
}
