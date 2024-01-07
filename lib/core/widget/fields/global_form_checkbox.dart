import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GlobalFormCheckBox extends StatelessWidget {
  final String? title;
  final Function()? onTitleTap;
  final double? width;
  final double? height;
  final String name;
  final bool? initialValue;
  final Function(bool?)? onChanged;
  final Function()? onReset;
  final String? Function(bool?)? validator;
  final Widget? customTitle;
  final AutovalidateMode autovalidateMode;
  final double horizontalTitleGap;
  final bool enabled;
  const GlobalFormCheckBox({
    super.key,
    this.enabled = true,
    this.title,
    this.customTitle,
    this.onTitleTap,
    required this.name,
    this.initialValue,
    this.width,
    this.height,
    this.onChanged,
    this.onReset,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.horizontalTitleGap = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 1,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: ListTileTheme(
          horizontalTitleGap: horizontalTitleGap,
          contentPadding: EdgeInsets.zero,
          child: FormBuilderCheckbox(
            controlAffinity: ListTileControlAffinity.trailing,
            enabled: enabled,
            key: key,
            autovalidateMode: autovalidateMode,
            name: name,
            initialValue: initialValue,
            onChanged: onChanged,
            onReset: onReset,
            contentPadding: EdgeInsets.zero,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              errorStyle: TextStyle(fontSize: 0.01),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent, width: 1),
              ),
            ),
            title: customTitle ?? GestureDetector(onTap: onTitleTap, child: Text(title ?? "", style: Theme.of(context).textTheme.bodySmall!)),
            validator: validator,
          ),
        ),
      ),
    );
  }
}
