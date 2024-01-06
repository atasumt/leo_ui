import 'package:hooks_riverpod/hooks_riverpod.dart';

final chooseNavigationNotifierProvider = StateNotifierProvider<ChooseNavigationNotifier, int>((ref) {
  return ChooseNavigationNotifier();
});

class ChooseNavigationNotifier extends StateNotifier<int> {
  /// initial state
  ChooseNavigationNotifier() : super(0);

  /// change current bottom navbar index
  void changeCurrentIndex(int index) => state = index;
}
