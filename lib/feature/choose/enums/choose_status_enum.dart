enum ChooseStatusEnum {
  noChoose(chooseIndex: -1),
  chooseKey(chooseIndex: 1),
  chooseQr(chooseIndex: 2),
  chooseLink(chooseIndex: 3);

  final int? chooseIndex;
  const ChooseStatusEnum({this.chooseIndex = -1});
}
