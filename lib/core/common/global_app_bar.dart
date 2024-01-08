import 'package:flutter/material.dart';
import 'package:lio_ui_example/core/widget/design/const_design.dart';

AppBar globalAppBar(
    {Widget? title,
    Color backgroundColor = kPrimaryColor,
    Color iconColor = kAppBarColor,
    Color backButtonColor = kAppBarColor,
    Widget? leading,
    double? toolbarHeight = 50,
    bool? centerTitle = true,
    List<Widget>? actions}) {
  return AppBar(
    title: title,
    leading: leading,
    automaticallyImplyLeading: false,
    centerTitle: centerTitle,
    elevation: 0,
    actions: actions,
    toolbarHeight: toolbarHeight,
    backgroundColor: backgroundColor,
    iconTheme: IconThemeData(color: iconColor),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(kDefaultNormalPadding),
        bottomRight: Radius.circular(kDefaultNormalPadding),
      ),
    ),
  );
}
